Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD12E68CF02
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Feb 2023 06:30:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB4043EF27
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Feb 2023 05:30:26 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id C24553EC14
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Feb 2023 12:32:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="lBVk3W/U";
	spf=pass (lists.linaro.org: domain of jerome.forissier@linaro.org designates 209.85.208.47 as permitted sender) smtp.mailfrom=jerome.forissier@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id u21so5039761edv.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Feb 2023 04:32:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ON3Sl99UT8ureqEDmbSEHsRNx7R9SA+QtKFoE+i2Oo=;
        b=lBVk3W/UyO+p9pLq07rPsBt3xO3mjw0/Q6FYYGvYul/Bl75Etx/NWDZziXRICISYS+
         OTpgs7RnubJ7HlWJC0ura+8mz9FMYhyJtqNMzTCWO2JnyWqdi1MN2f7Z1V894VlNIO9j
         p6xP5SK4SW/m915LCK+EHPwQmRVusS2IFDT0IeXhMnZtNgCAnMw8tmhPWIEyYIdUv45K
         MfEhOVerky/dQnDV5WkSyqaYpPz0oIOOZe/tvR90qdmUjlkcpH0RC+oQ0RS7bj+hAfwi
         09UGK7Kxldpb7n2Vkg8yK53NSa//2Amlqbdrp1X7BKt+6m7Qh9UtlZluuXWXIdj2S1eR
         xJQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8ON3Sl99UT8ureqEDmbSEHsRNx7R9SA+QtKFoE+i2Oo=;
        b=rEbJZcOUBtn1bwIeaZ6lU00cOZqfhrMeKxae5+pPSncufD+2Gbdy+wH9pwN4qxdkBY
         9RmuqpJh9D0Nk6Dwji0TbHtXeLJOST2/OND69EnCy7whCnX2LOC2XbvwEtRevn32lPRx
         ahDYBG/NFct8kVcXr1OvLjoaUJ37uVsAK2K1URGZRbyfYgUTPAmM6zOots8MUtSK8Gki
         L9vQpK92lMbyovRF6emB4iiDZ8uHVOeiAzy+nq+LpmJd2jLetIygnO1qVk7KhIFze3Y9
         /jegQhhOhtQCQs+yXJNnb65jD+rKbEJ4jCRKVAf+mYWbc+0eGplDyaS2HW5TzX4qU6gW
         Gd3A==
X-Gm-Message-State: AO0yUKUisyf1nC8xACDhQMAK8r8z7rOZCcDK7gfAvAUezBK67xUa75RH
	iDUd5+05vfrzof/lEwNwlh261yh6
X-Google-Smtp-Source: AK7set+mvfj95zLeSWmU5e5UDpt5MMre8u+osBvx7sTSxXMPwrd90oXq/vv0Ttley1PZsEGT2E4jxg==
X-Received: by 2002:a05:6402:298c:b0:4a8:452:55a4 with SMTP id eq12-20020a056402298c00b004a8045255a4mr5214933edb.17.1675427520772;
        Fri, 03 Feb 2023 04:32:00 -0800 (PST)
Received: from [10.7.1.2] ([82.180.148.111])
        by smtp.gmail.com with ESMTPSA id r17-20020a05640251d100b0046c7c3755a7sm1068634edd.17.2023.02.03.04.31.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 04:32:00 -0800 (PST)
Message-ID: <f3ccd7ad-0bbb-be39-c989-765552e2c6af@linaro.org>
Date: Fri, 3 Feb 2023 13:31:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: Etienne Carriere <etienne.carriere@linaro.org>,
 Olivier Masse <olivier.masse@nxp.com>
References: <20220812143055.12938-1-olivier.masse@nxp.com>
 <20220812143055.12938-2-olivier.masse@nxp.com>
 <30534fadb8172088eddef46ae71d87c167cbf32e.camel@nxp.com>
 <CAFA6WYOMCswgHHxsgc9Hgi7rmTPaZDqce=BixvYoFTfL0bTFDQ@mail.gmail.com>
 <PA4PR04MB75204E8D2B959893A04D55F388D69@PA4PR04MB7520.eurprd04.prod.outlook.com>
 <CAFA6WYPGT8xZnB1idcxcHT1bvM=0kwFssBQbn063-qg=czM-ZQ@mail.gmail.com>
 <CAN5uoS8XgvAKVwKHx-uOe3hAa4Jrd5FJt6xNOG5s-simkRND9w@mail.gmail.com>
 <c86d1a46af6e076038b3f0c2dd68213ff1e8b254.camel@nxp.com>
 <CAN5uoS-A8EovbnxvcXqiYHcy95d-PTYUZvnNr3=kf84AGkG8Kw@mail.gmail.com>
Content-Language: en-US
From: Jerome Forissier <jerome.forissier@linaro.org>
In-Reply-To: <CAN5uoS-A8EovbnxvcXqiYHcy95d-PTYUZvnNr3=kf84AGkG8Kw@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C24553EC14
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.47:from]
X-Rspamd-Action: no action
X-MailFrom: jerome.forissier@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: H74EEXR2DQDFG4FXL2VED2GGYBEONL6B
X-Message-ID-Hash: H74EEXR2DQDFG4FXL2VED2GGYBEONL6B
X-Mailman-Approved-At: Tue, 07 Feb 2023 05:30:11 +0000
CC: "sumit.garg@linaro.org" <sumit.garg@linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "fredgc@google.com" <fredgc@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "afd@ti.com" <afd@ti.com>, "op-tee@lists.trustedfirmware.org" <op-tee@lists.trustedfirmware.org>, "jens.wiklander@linaro.org" <jens.wiklander@linaro.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, Cyrille Fleury <cyrille.fleury@nxp.com>, Peter Griffin <peter.griffin@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, =?UTF-8?Q?Cl=c3=a9ment_Faure?= <clement.faure@nxp.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXT] Re: [PATCH v2 1/1] tee: new ioctl to a register tee_shm from a dmabuf file descriptor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H74EEXR2DQDFG4FXL2VED2GGYBEONL6B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On 2/3/23 12:37, Etienne Carriere wrote:
> Hell all,
> 
> +jerome f.
> 
> On Fri, 3 Feb 2023 at 12:01, Olivier Masse <olivier.masse@nxp.com> wrote:
>>
>> On jeu., 2023-02-02 at 10:58 +0100, Etienne Carriere wrote:
>>> Caution: EXT Email
>>>
>>> On Thu, 2 Feb 2023 at 09:35, Sumit Garg <sumit.garg@linaro.org>
>>> wrote:
>>>> Hi Cyrille,
>>>>
>>>> Please don't top post as it makes it harder to follow-up.
>>>>
>>>> On Thu, 2 Feb 2023 at 13:26, Cyrille Fleury <cyrille.fleury@nxp.com
>>>>> wrote:
>>>>> Hi Sumit, all
>>>>>
>>>>> Upstream OP-TEE should support registering a dmabuf since a
>>>>> while, given how widely dmabuf is used in Linux for passing
>>>>> buffers around between devices.
>>>>>
>>>>> Purpose of the new register_tee_shm ioctl is to allow OPTEE to
>>>>> use memory allocated from the exiting linux dma buffer. We don't
>>>>> need to have secure dma-heap up streamed.
>>>>>
>>>>> You mentioned secure dma-buffer, but secure dma-buffer is a dma-
>>>>> buffer, so the work to be done for secure or "regular" dma
>>>>> buffers by the register_tee_shm ioctl is 100% the same.
>>>>>
>>>>> The scope of this ioctl is limited to what existing upstream dma-
>>>>> buffers are:
>>>>>         -> sharing buffers for hardware (DMA) access across
>>>>> multiple device drivers and subsystems, and for synchronizing
>>>>> asynchronous hardware access.
>>>>>        -> It means continuous memory only.
>>>>>
>>>>> So if we reduce the scope of register tee_shm to exiting dma-
>>>>> buffer area, the current patch does the job.
>>>>
>>>> Do you have a corresponding real world use-case supported by
>>>> upstream
>>>> OP-TEE? AFAIK, the Secure Data Path (SDP) use-case is the one
>>>> supported in OP-TEE upstream but without secure dmabuf heap [1]
>>>> available, the new ioctl can't be exercised.
>>>>
>>>> [1] https://github.com/OP-TEE/optee_test/blob/master/host/xtest/sdp_basic.h#L15
>>>
>>> OP-TEE has some SDP test taht can exercice SDP: 'xtest
>>> regression_1014'.
>>> https://github.com/OP-TEE/optee_test/blob/3.20.0/host/xtest/regression_1000.c#L1256
>>>
>>> The test relies on old staged ION + local secure dmabuf heaps no more
>>> maintained, so this test is currently not functional.
>>> If we upgrade the test to mainline dmabuf alloc means, and apply the
>>> change discussed here, we should be able to regularly test SDP in
>>> OP-TEE project CI.
>>> The part to update is the userland allocation of the dmabuf:
>>> https://github.com/OP-TEE/optee_test/blob/3.20.0/host/xtest/sdp_basic.c#L91
>>>
>>>
>>
>> the test was already updated to support secure dma heap with Kernel
>> version 5.11 and higher. the userland allocation could be find here:
>> https://github.com/OP-TEE/optee_test/blob/3.20.0/host/xtest/sdp_basic.c#L153
>>
> 
> Oh, right. So fine, optee_test is ready for the new flavor of secure
> buffer fd's.
> 
> 
>> This upgrade need a Linux dma-buf patch:
>> https://lore.kernel.org/all/20220805154139.2qkqxwklufjpsfdx@000377403353/T/
> 
> @Jens, @Jerome, do we want to pick the 2 necessary Linux patches in
> our Linux kernel fork (github.com/linaro-swg/linux.git) to exercise
> SDP in our CI and be ready if dma-buf secure heaps (ref right above)
> is accepted and merged in mainline kernel?.

How would that help? I mean, when the kernel patches are merged and if
things break we can make the necessary adjustments in the optee_test app
or whatever, but in the meantime I don't see much point. I suppose the
people who are actively developing the patches do make sure it works with
OP-TEE ;-)

Regards,
-- 
Jerome
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
