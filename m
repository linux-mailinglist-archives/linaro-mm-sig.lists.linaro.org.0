Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FC670F321
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:39:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F6C34142D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:39:26 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	by lists.linaro.org (Postfix) with ESMTPS id B48A03EBCA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 23:34:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=wF+aug1y;
	spf=pass (lists.linaro.org: domain of khilman@baylibre.com designates 209.85.216.51 as permitted sender) smtp.mailfrom=khilman@baylibre.com;
	dmarc=none
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2537a79b9acso227341a91.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 16:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684884850; x=1687476850;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=MNA57LFsEAjv0YnO7XAE11SZw6Ds4IrSm19nvlVJk98=;
        b=wF+aug1ydohk/cr8Rfez98IIlwqb13f0RxZ6y479XbKidTrvL03zg77sxMin+zGFGx
         l5eXByrl4nPZWQWmqQncYvX9EBJ2jhKSQOmxQvgaHwbuXn34nx47cTnpfrrrJzj+8zQw
         4pNfP+xtaTEDb3tmNzMbZ9lq1FvB1h3Y/9o0b9L7TTlVcKFXDAGLKRDd9xXEgp7O259E
         JEOObHH4XNk6aUQOdhlo/FfoEEjn3MqFmkmu5jjMJ2GV+T7Gsu/kuTOHMZ3neHBb56qU
         VtYRMrOu288bwsGXUhDF1P0SpaYg4k2ai2BHS88fM94NGHU7+411tXSKeuvtY4mY+E9V
         VdhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684884850; x=1687476850;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MNA57LFsEAjv0YnO7XAE11SZw6Ds4IrSm19nvlVJk98=;
        b=HQiLmE5ffbUeaRhSw9FBtIo2KqngS08qojjWIqE5lvgzamoO9D9Zfz9ekeBgyIZhYX
         Lx0oT97Hq2PZQkS1JUB/k6LPhnjyK8k0CfLGOLnwYMv3npPEHk3C+egCytSvroEOmcFr
         agLFBDSHFlckFpkkPWPE7qspnD0xnahgKBpIo9y/ZR1p/JNiopBPaokTSfuHxP0L9hgJ
         ZCYdov19vuhUAb/ei6kW46OaKRm1C0Cgk4QZPCa/0uyV2oNJnNwP+JZDHdMSpEyiTIr6
         bU2hh+Mu6FoFP/Cv+BegJBkiM/2zGHF/oyBhM41lD59tVR6wLlI/MFG2WXHTXTG7pWp8
         Z2DQ==
X-Gm-Message-State: AC+VfDwj287E7LxyDEBx7Z7WZIcmB4vCbGqwe2suQ5ZFGX/uP9Vi0/hB
	/mGLmv6onvL3PzSPdk94va2e/Q==
X-Google-Smtp-Source: ACHHUZ4/S/KRgTtfzWmFTkvHxw3NShbPiyY6ElSBnhSbSlY2KYV0gjG/Ka+9HzWGVYgXMdo2hQhd0g==
X-Received: by 2002:a17:90b:a45:b0:253:947f:af51 with SMTP id gw5-20020a17090b0a4500b00253947faf51mr13745197pjb.5.1684884849781;
        Tue, 23 May 2023 16:34:09 -0700 (PDT)
Received: from localhost ([75.172.135.98])
        by smtp.gmail.com with ESMTPSA id gl21-20020a17090b121500b00253305f36c4sm100944pjb.18.2023.05.23.16.34.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 16:34:09 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Jeffrey Hugo <quic_jhugo@quicinc.com>, Alexandre Bailon
 <abailon@baylibre.com>, airlied@gmail.com, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de
In-Reply-To: <d0807fe4-dba2-8244-f655-d04e80973572@quicinc.com>
References: <20230517145237.295461-1-abailon@baylibre.com>
 <d0807fe4-dba2-8244-f655-d04e80973572@quicinc.com>
Date: Tue, 23 May 2023 16:34:08 -0700
Message-ID: <7ha5xud3m7.fsf@baylibre.com>
MIME-Version: 1.0
X-Spamd-Result: default: False [-2.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20221208.gappssmtp.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.51:from];
	RCPT_COUNT_TWELVE(0.00)[24];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[baylibre.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,baylibre.com,lists.freedesktop.org,amd.com,lists.linaro.org,lists.infradead.org,linaro.org,gmail.com,collabora.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[quicinc.com,baylibre.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	DKIM_TRACE(0.00)[baylibre-com.20221208.gappssmtp.com:+];
	REDIRECTOR_URL(0.00)[twitter.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B48A03EBCA
X-Spamd-Bar: --
X-MailFrom: khilman@baylibre.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: A3VGUVXGDJ6TBMWLMUZ3WJ3WKW6FXPTV
X-Message-ID-Hash: A3VGUVXGDJ6TBMWLMUZ3WJ3WKW6FXPTV
X-Mailman-Approved-At: Wed, 24 May 2023 09:37:30 +0000
CC: devicetree@vger.kernel.org, conor+dt@kernel.org, bero@baylibre.com, jstephan@baylibre.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, robh+dt@kernel.org, linux-mediatek@lists.infradead.org, nbelin@baylibre.com, krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com, linux-media@vger.kernel.org, sumit.semwal@linaro.org, linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/7] Add a DRM driver to support AI Processing Unit (APU)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A3VGUVXGDJ6TBMWLMUZ3WJ3WKW6FXPTV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Jeffrey Hugo <quic_jhugo@quicinc.com> writes:

> On 5/17/2023 8:52 AM, Alexandre Bailon wrote:
>> This adds a DRM driver that implements communication between the CPU and an
>> APU. The driver target embedded device that usually run inference using some
>> prebuilt models. The goal is to provide common infrastructure that could be
>> re-used to support many accelerators. Both kernel, userspace and firmware tries
>> to use standard and existing to leverage the development and maintenance effort.
>> The series implements two platform drivers, one for simulation and another one for
>> the mt8183 (compatible with mt8365).
>
> This looks like the 3 existing Accel drivers.  Why is this in DRM?

Yes, this belongs in accel.  I think Alex had some issues around the
infra in accel with device nodes not appearing/opening properly, but
I'll let him comment there.  But either way, the right approach should
be to fix any issues in accel and move it there.

[...]

>>   .../devicetree/bindings/gpu/mtk,apu-drm.yaml  |  38 ++
>>   drivers/gpu/drm/Kconfig                       |   2 +
>>   drivers/gpu/drm/Makefile                      |   1 +
>>   drivers/gpu/drm/apu/Kconfig                   |  22 +
>>   drivers/gpu/drm/apu/Makefile                  |  10 +
>>   drivers/gpu/drm/apu/apu_drv.c                 | 282 +++++++++
>>   drivers/gpu/drm/apu/apu_gem.c                 | 230 +++++++
>>   drivers/gpu/drm/apu/apu_internal.h            | 205 ++++++
>>   drivers/gpu/drm/apu/apu_sched.c               | 592 ++++++++++++++++++
>>   drivers/gpu/drm/apu/simu_apu.c                | 313 +++++++++
>>   include/uapi/drm/apu_drm.h                    |  81 +++
>
> "apu" seems too generic.  We already have 3 "AI processing units" over 
> in drivers/accel already...

Indeed, it is generic, but that's kind of the point for this driver
since it's targetted at generalizing the interface with "AI processing
units" on a growing number of embedded SoCs (ARM, RISC-V, etc.)  In
addition, the generic naming is intentional because the goal is bigger
than the kernel and is working towards a generic, shared "libAPU"
userspace[1], but also common firmware for DSP-style inference engines
(e.g. analgous Sound Open Firmware for audio DSPs.)

As usual, the various SoC vendors use different names (APU, NPU, NN
unit, etc.)  but we'd like a generic name for the class of devices
targetted by this driver.  And unfortunately, it looks like the equally
generic "Versatile processing unit" is already taken Intel's
drivers/accel/ivpu. :)

Maybe since this is more about generalizing the interface between the
CPU running linux and the APU, what about the name apu_if?  But I guess
that applies to the other 3 drivers in drivers/accell also.  Hmmm...

Naming things is hard[2], so we're definitly open to other ideas.  Any
suggestions?

Kevin

[1] https://gitlab.baylibre.com/baylibre/libapu/libapu

[2]
"There are 2 hard problems in computer science: cache invalidation,
 naming things and off-by-1 errors."
 -- https://twitter.com/secretGeek/status/7269997868

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
