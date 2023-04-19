Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F116F55F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:21:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32D37402AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:21:25 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	by lists.linaro.org (Postfix) with ESMTPS id BD2593E923
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 16:33:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=otvUaF7e;
	spf=pass (lists.linaro.org: domain of f.fainelli@gmail.com designates 209.85.210.180 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-63b5c830d5eso62391b3a.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 09:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681922039; x=1684514039;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hejd87Jll0E8NOGuMljt4taTMik1yKpFSOJV8ogm+QU=;
        b=otvUaF7ejsijSly4r1bE5p0DcDAEY+dCK+KVYM+TKOnGIRDPkokhlWhv1Y4lwB+ZkJ
         J+rF08EQd1xv3uuCAYfuKfepDM3Eusu6Uzl+SkCDbVx4j8Kn6sz+XuG7ALq2caYTgvj8
         08wPhYvwIHTxLDZdYdxa2Xd5iDpIHEpZDQQLzd8+mvwCpOCz+WsrdOTTJ2/6cA9LYgzN
         7NDAmo86b0SDi1sLACOkw9YxuxQHprwevC+PiLw6AfCihrx2IR9ovUWUsBFPeUWvsix0
         FhdUPHDgv7r1UhOtdh8KkQQQN/cNQEWYyJrQZ1/9O7ON5XBMjvxAcMuAzNGWcDRBFKOz
         QhGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681922039; x=1684514039;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hejd87Jll0E8NOGuMljt4taTMik1yKpFSOJV8ogm+QU=;
        b=JtgefYQPNeB8JSxKnOSCW0/J5vrwnYB8EZZcSXMKMjqoHrAbE39Iy4y3/+Rlvjpea/
         LAQNLoK0q0NDhNQMW1k1hpjjMbpCARNwON0W9le8GQeBkNAOoVEx6z0h16e9QUbEm81e
         Bg18iKZpIfGISzyf0OiOR6kPIK5YKEs4iu0b8PCPK/XuMgaGiiJRP8v2uxZ4RE53dbpk
         OZ7d65Vp7Qy89u7pFaVUbW1SdkLAPq/sIc2isdGFp+jSVy1HySblLQZXnlHAgHAz0gVc
         KpNqMUMiCIwso0kUc1sdYCMf6ZGd+h56A6KPdklMJsPasPHu9PmOJg+8DUf/oiZBpbKs
         U+5A==
X-Gm-Message-State: AAQBX9de6b6qFqn16IkX5BBpnNVuZIpYaaPxFBwEpq/PxipHYQxq3MUO
	SmSqawc/IHZy8rQzIfORs3Q=
X-Google-Smtp-Source: AKy350Yh+6NbKPw4KD+UsFvenBCaCDaUcheuDcqPn53EST9vXg5qyuw0UcOKYiNkqaXz2dPOz64XMQ==
X-Received: by 2002:a17:902:f689:b0:1a6:f5d5:b80a with SMTP id l9-20020a170902f68900b001a6f5d5b80amr7744678plg.38.1681922038707;
        Wed, 19 Apr 2023 09:33:58 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id p10-20020a1709026b8a00b0019a6cce2060sm11631338plk.57.2023.04.19.09.33.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 09:33:58 -0700 (PDT)
Message-ID: <932bb2c6-71ce-525f-fbb2-a0a742ee8e12@gmail.com>
Date: Wed, 19 Apr 2023 09:33:50 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Heiner Kallweit <hkallweit1@gmail.com>,
 Justin Chen <justinpopo6@gmail.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, bcm-kernel-feedback-list@broadcom.com
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
 <1681863018-28006-4-git-send-email-justinpopo6@gmail.com>
 <03dadae3-3a89-cdb0-7cd1-591d62735836@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <03dadae3-3a89-cdb0-7cd1-591d62735836@gmail.com>
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[192.19.223.252:received,209.85.210.180:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.180:from];
	FREEMAIL_CC(0.00)[broadcom.com,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,lunn.ch,armlinux.org.uk,amd.com];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[dt];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[23];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,broadcom.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BD2593E923
X-Spamd-Bar: ----
X-MailFrom: f.fainelli@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FRVNQFO4U4ALJQMT567K36TNZGP3ORKX
X-Message-ID-Hash: FRVNQFO4U4ALJQMT567K36TNZGP3ORKX
X-Mailman-Approved-At: Wed, 03 May 2023 10:16:14 +0000
CC: justin.chen@broadcom.com, f.fainelli@gmail.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, andrew@lunn.ch, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 3/6] net: bcmasp: Add support for ASP2.0 Ethernet controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FRVNQFO4U4ALJQMT567K36TNZGP3ORKX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 4/18/23 23:35, Heiner Kallweit wrote:
> On 19.04.2023 02:10, Justin Chen wrote:
>> Add support for the Broadcom ASP 2.0 Ethernet controller which is first
>> introduced with 72165. This controller features two distinct Ethernet
>> ports that can be independently operated.
>>
>> This patch supports:
[snip]
>> +	intf->tx_spb_index = spb_index;
>> +	intf->tx_spb_dma_valid = valid;
>> +	bcmasp_intf_tx_write(intf, intf->tx_spb_dma_valid);
>> +
>> +	if (tx_spb_ring_full(intf, MAX_SKB_FRAGS + 1))
>> +		netif_stop_queue(dev);
>> +
> 
> Here it may be better to use the new macros from include/net/netdev_queues.h.
> It seems your code (together with the related part in tx_poll) doesn't consider
> the queue restart case.
> In addition you should check whether using READ_ONCE()/WRITE_ONCE() is needed,
> e.g. in ring_full().

Thanks Heiner. Can you trim the parts you are not quoting otherwise one 
has to scroll all the way down to where you responded. Thanks!
-- 
Florian

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
