<div class="control-group">
    <label class="control-label" for="paynow_integrationid">PayNow Integration ID:</label>
    <div class="controls">
        <input type="text" name="payment_data[processor_params][integrationid]" id="paynow_integrationid" value="{$processor_params.integrationid}" class="input-text" size="60" />
    </div>
</div>

<div class="control-group">
    <label class="control-label" for="pay4app_integrationkey">Integration Key:</label>
    <div class="controls">
        <input type="password" name="payment_data[processor_params][integrationkey]" id="paynow_integrationkey" value="{$processor_params.integrationkey}" class="input-text" size="60" />
    </div>
</div>


{assign var="statuses" value=$smarty.const.STATUSES_ORDER|fn_get_simple_statuses}       
<div class="control-group">
    <label class="control-label" for="paynow_completed">Status To Set For Order Whose Payment Has Been Completed:</label>
    <div class="controls">
        <select name="payment_data[processor_params][statuses][completed]" id="paynow_completed">
            {foreach from=$statuses item="s" key="k"}
            <option value="{$k}" {if (isset($processor_params.statuses.completed) && $processor_params.statuses.completed == $k) || (!isset($processor_params.statuses.completed) && $k == 'P')}selected="selected"{/if}>{$s}</option>
            {/foreach}
        </select>
    </div>
</div>
