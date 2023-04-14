Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4C86E256F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Apr 2023 16:18:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A0B643F31F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Apr 2023 14:18:11 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lists.linaro.org (Postfix) with ESMTPS id 966FE3F070
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Apr 2023 14:17:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=XqDrpcKR;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 33EEHlxi092711;
	Fri, 14 Apr 2023 09:17:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1681481867;
	bh=0xJWWmhVT0Y8R8sE6W9HoThWfwH6miZcXks0nWWEUaU=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=XqDrpcKR6XXiYMge3vlQFJyuwjiPY9ghwi0NfLIE3IX6eMzbNENz3q8/b+Lqf5M2J
	 Tf/NDSHkKHWs3g12D1ggysaZBiE/CP9eXviT1Chm6hm0Ckms6O2N0ieXjiE/FUOdsk
	 Qw9oZyMsqrVmUMSJ/wmUI3w8lOY57eGBzP/HmDGc=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 33EEHl7J100935
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 14 Apr 2023 09:17:47 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Fri, 14
 Apr 2023 09:17:46 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Fri, 14 Apr 2023 09:17:46 -0500
Received: from [10.250.32.8] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 33EEHk1T029808;
	Fri, 14 Apr 2023 09:17:46 -0500
Message-ID: <5be1c313-9e1e-3bac-46f3-ee172d1afb45@ti.com>
Date: Fri, 14 Apr 2023 09:17:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: Christian Gmeiner <christian.gmeiner@gmail.com>
References: <20200424222740.16259-1-afd@ti.com>
 <CAL_Jsq+4mf6QHX27knoHTXA4vnsC3swuvAH7zK1DpyaV-p_qbw@mail.gmail.com>
 <f46c097a-b2a6-6368-a8a4-e30995a54d17@ti.com>
 <CAH9NwWeZnDEkundm98=KL6xB9bVO3nOkk48xMF-eQnztP4DD4g@mail.gmail.com>
 <99f1da4f-810e-986d-388a-af136ade745e@ti.com>
 <CAH9NwWcafkmcZd=5WN_hoJmfkwUJJrewaPnSmCK-izrC3hwKnA@mail.gmail.com>
 <CAH9NwWfkWTXMVOY-7USgYJnBtUOYd8=TFVcPxiTgVd9AJAQH=Q@mail.gmail.com>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <CAH9NwWfkWTXMVOY-7USgYJnBtUOYd8=TFVcPxiTgVd9AJAQH=Q@mail.gmail.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 966FE3F070
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.19.0/24];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:161, ipnet:198.47.19.0/24, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[fllv0016.ext.ti.com:helo,fllv0016.ext.ti.com:rdns];
	TO_DN_EQ_ADDR_SOME(0.00)[]
Message-ID-Hash: MTNPCTYZW3BIXOEA2PNBLVF35XZHXLKI
X-Message-ID-Hash: MTNPCTYZW3BIXOEA2PNBLVF35XZHXLKI
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] misc: sram: Add dma-heap-export reserved SRAM area type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MTNPCTYZW3BIXOEA2PNBLVF35XZHXLKI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 4/14/23 12:44 AM, Christian Gmeiner wrote:
> Hi Andrew
> 
> Am Di., 4. Apr. 2023 um 17:02 Uhr schrieb Christian Gmeiner
> <christian.gmeiner@gmail.com>:
>>
>>>> Hi Andrew
>>>>
>>>>>
>>>>>
>>>>> Okay, will split for v2.
>>>>>
>>>>>
>>>>
>>>> Was there a follow-up v2 of this patchset? AFAICT this series did not
>>>> make it into the mainline kernel.
>>>> Do you have any plans to work on it? If not I would like to help out
>>>> as we have a use case where we want to
>>>> use a dma-buf sram exporter.
>>>>
>>>>
>>>
>>> Sure, I've been keeping it alive in our evil vendor tree, but if
>>> there is interest upstream now I'll post a v2 and CC you.
>>
>> That would be great!
>>
> 
> Did you find time to prepare a v2? If not, can you point me to the
> evil vendor tree?
> 
> 

I did find some time and CC'd you on v2, the patch's subject was slightly
renamed, so maybe your emailer missed it?

https://patchwork.kernel.org/project/linux-media/patch/20230403192433.26648-1-afd@ti.com/

Our evil vendor trees are here either way:

https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/

Andrew
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
