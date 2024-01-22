Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 54176835FD9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jan 2024 11:38:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6013644246
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jan 2024 10:38:26 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id E32D53ED39
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jan 2024 10:38:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=ry2b84fv;
	dmarc=pass (policy=quarantine) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1705919897;
	bh=QOgZWgCo219X/V3HqTTipzGqn3wTwHbInkP56JKp9LU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ry2b84fvNF59C0fPB/rOmCrQfkB9UCYyyxjbbVblAutR13mGF1OtEsYNT4P9veMNH
	 qNGb0ir5fSdO4/aVWMTwKNLlUU4KN+tMfMu64/tonBwHeD1VIHlseBwPfkXoaAHWoL
	 gNMt/FELnlRq0ivLUOec/jQpoxO2qCVeXjzlOswL3NAJBM7KRH5I23LTC7FwxSwe0B
	 4MZeDMMZYFG6QD6iFsGlOpEyACqG6GUsEXAdtXbAt7wl1yVFWDEwcExZjeJN09OoNg
	 bb2AeCvEGX7DEYDkLgAxYVEnt8NlA8nXRW+J+OfUcYS0PFxRe/mST7BTtk5m9gOW9R
	 dUgN3exk993+g==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 89FCE378045F;
	Mon, 22 Jan 2024 10:38:16 +0000 (UTC)
Message-ID: <9c447297-2738-4b63-9da9-0d004660e65d@collabora.com>
Date: Mon, 22 Jan 2024 11:38:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, "Jason-JH.Lin"
 <jason-jh.lin@mediatek.com>
References: <20240119063224.29671-1-jason-jh.lin@mediatek.com>
 <20240119063224.29671-2-jason-jh.lin@mediatek.com>
 <20240119-demote-fragment-624a35367a87@spud>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240119-demote-fragment-624a35367a87@spud>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E32D53ED39
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.874];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,mediatek.com];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
Message-ID-Hash: 7G4A5Z7FKQK7UQEJVSRZULJMT53QNJBV
X-Message-ID-Hash: 7G4A5Z7FKQK7UQEJVSRZULJMT53QNJBV
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/3] dt-bindings: mailbox: Add mediatek,gce-props.yaml
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7G4A5Z7FKQK7UQEJVSRZULJMT53QNJBV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 19/01/24 17:44, Conor Dooley ha scritto:
> Rob,
> 
> On Fri, Jan 19, 2024 at 02:32:22PM +0800, Jason-JH.Lin wrote:
>> Add mediatek,gce-props.yaml for common GCE properties that is used for
>> both mailbox providers and consumers. We place the common property
>> "mediatek,gce-events" in this binding currently.
>>
>> The property "mediatek,gce-events" is used for GCE event ID corresponding
>> to a hardware event signal sent by the hardware or a sofware driver.
>> If the mailbox providers or consumers want to manipulate the value of
>> the event ID, they need to know the specific event ID.
>>
>> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
>> ---
>>   .../bindings/mailbox/mediatek,gce-props.yaml  | 52 +++++++++++++++++++
> 
> Is bindings/mailbox the correct directory to put this in?
> 

Well, the GCE is a mailbox :-)

...but I get why you're asking... and I don't think that this should go to
arm/mediatek/ as it's really just only referring to extra properties for kind of
"special" mailbox client events...

Cheers,
Angelo

>>   1 file changed, 52 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/mailbox/mediatek,gce-props.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/mailbox/mediatek,gce-props.yaml b/Documentation/devicetree/bindings/mailbox/mediatek,gce-props.yaml
>> new file mode 100644
>> index 000000000000..68b519ff089f
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mailbox/mediatek,gce-props.yaml
>> @@ -0,0 +1,52 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mailbox/mediatek,gce-props.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: MediaTek Global Command Engine Common Propertes
>> +
>> +maintainers:
>> +  - Houlong Wei <houlong.wei@mediatek.com>
>> +
>> +description:
>> +  The Global Command Engine (GCE) is an instruction based, multi-threaded,
>> +  single-core command dispatcher for MediaTek hardware. The Command Queue
>> +  (CMDQ) mailbox driver is a driver for GCE, implemented using the Linux
>> +  mailbox framework. It is used to receive messages from mailbox consumers
>> +  and configure GCE to execute the specified instruction set in the message.
>> +  We use mediatek,gce-mailbox.yaml to define the properties for CMDQ mailbox
>> +  driver. A device driver that uses the CMDQ driver to configure its hardware
>> +  registers is a mailbox consumer. The mailbox consumer can request a mailbox
>> +  channel corresponding to a GCE hardware thread to send a message, specifying
>> +  that the GCE thread to configure its hardware. The mailbox provider can also
>> +  reserved a mailbox channel to configure GCE hardware register by the spcific
>> +  GCE thread. This binding defines the common GCE properties for both mailbox
>> +  provider and consumers.
>> +
>> +properties:
>> +  mediatek,gce-events:
>> +    description:
>> +      GCE has an event table in SRAM, consisting of 1024 event IDs (0~1023).
>> +      Each event ID has a boolean event value with the default value 0.
>> +      The property mediatek,gce-events is used to obtain the event IDs.
>> +      Some gce-events are hardware-bound and cannot be changed by software.
>> +      For instance, in MT8195, when VDO0_MUTEX is stream done, VDO_MUTEX will
>> +      send an event signal to GCE, setting the value of event ID 597 to 1.
>> +      Similarly, in MT8188, the value of event ID 574 will be set to 1 when
>> +      VOD0_MUTEX is stream done.
>> +      On the other hand, some gce-events are not hardware-bound and can be
>> +      changed by software. For example, in MT8188, we can set the value of
>> +      event ID 855, which is not bound to any hardware, to 1 when the driver
>> +      in the secure world completes a task. However, in MT8195, event ID 855
>> +      is already bound to VDEC_LAT1, so we need to select another event ID to
>> +      achieve the same purpose. This event ID can be any ID that is not bound
>> +      to any hardware and is not yet used in any software driver.
>> +      To determine if the event ID is bound to the hardware or used by a
>> +      software driver, refer to the GCE header
>> +      include/dt-bindings/gce/<chip>-gce.h of each chip.
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    minItems: 1
>> +    maxItems: 1024
>> +
>> +additionalProperties: true
>> -- 
>> 2.18.0
>>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
