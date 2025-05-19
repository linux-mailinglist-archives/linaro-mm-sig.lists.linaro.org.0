Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF0EABC8F4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 May 2025 23:15:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BAF9454FE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 May 2025 21:15:57 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by lists.linaro.org (Postfix) with ESMTPS id AF9E740C77
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 May 2025 21:15:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=U6k15rcn;
	spf=pass (lists.linaro.org: domain of airlied@gmail.com designates 209.85.218.42 as permitted sender) smtp.mailfrom=airlied@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ad5273c1fd7so809635166b.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 May 2025 14:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747689345; x=1748294145; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xfCxvNrNXH6YMvxiBWl55URv30Vk5ImyK9KqXeiCoPg=;
        b=U6k15rcnqkjJSXrNU/I/r1TSaoouPRlj+QJBwUi1Fr2dcvq25bkaNIh8Rr69J3cmA6
         Hoaupj2/tbjjFM7/Jd/gfNbVCXClMn3iJ1XZTAMci44i4GgtLBXJURje1E21oMrORMEp
         aE3RxfaI8mZcK6uykYuQNY+ySfjXYG5822GPavLFVWq6sfT92uUYLaxolDmG8w5FMnQS
         HEoKnjHSlsM+pbKDTivg9sUHHlqw7di0zMWqNxXyrBdjpXEX0u33JQ9FWFU2gpsWXphy
         AuozdxflZqeROM6r+v/G6Rm6V4Ufg+KLmVIx8GfUp8gMRdT2I2jWS0yANzeJ60y1Voz3
         YFhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747689345; x=1748294145;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xfCxvNrNXH6YMvxiBWl55URv30Vk5ImyK9KqXeiCoPg=;
        b=iJ4/vDFanYy+rwTX/Pj7Stz/feAOGJLTM3d6YtQYk1nob1sMq6q7qQsDcTWL7i0xgc
         Zcu439b2xFJKOdUGEx3hOUYnrr54Tk7Ppf2eYxTPYkFzs0GarmV4kZMUUIZCKQTRRHSm
         ftYfa1MOrr7fQkrUQeeOK7FkROndwNM9EfIHWhtVIntk9ToYun9WB3qMHCFqP1hewGIt
         i11PJmugaRQ52jo40qH27QJmZ1rRGbTuAcVlDVp+sAo5cATtXK0AsNVjQNdvlUhWppD/
         Ry9+n6Q0SPE+Am+PdZY+eCIJ73fPOxodCXe3n7fDKqeXySeePTsks2gwvn8+lWyuw+VF
         +P9A==
X-Forwarded-Encrypted: i=1; AJvYcCW/YS/69IOc/v3+vZbUD5aZggUaRTxzFuBSK+U0DpWx8giETjOYRtzbrNEbPvRmhP2Gw30zFD5H5CY0obCi@lists.linaro.org
X-Gm-Message-State: AOJu0YzaKPZgPag/lDqSWmeoIMm7ZqPPIfP8AYb2aovjf5VGv3oRYydU
	DdWbTZE6xRvKfZ09tn3n8OFTv/P1Sudd31q18CPwIoi8AlSF40W2l/eOVSGnZF3o21JI12ZEoOO
	DqQuZ24hSovlD1Thqj+gH4oD/RR0gWVQ=
X-Gm-Gg: ASbGnctDKPXbs4M2M3K9ZZA7AReAaw89XQzb8muNi6XK8aNOhHTFYGF0rC1Uhe7MMIU
	mKJjizv4PD7QbztaUS7dW/1oYrpJwgKoqLY9y8HaPaSeScXqg12q1bZkz7vozPcRWZ+ak5EUC/P
	SO69fpXNfZ/Os32MkDK0Utj2fTglmAWa0=
X-Google-Smtp-Source: AGHT+IEdHJ5TsiYJUOSilPNO+z3JABvgvB65Ct1aB4PjJ2fABaDgZlQuvx2XmPkklIghfrLSC+0u0HMeQGgesMbdSWY=
X-Received: by 2002:a17:907:94d0:b0:ad2:2949:bdfc with SMTP id
 a640c23a62f3a-ad536b7ca51mr1349013266b.3.1747689344467; Mon, 19 May 2025
 14:15:44 -0700 (PDT)
MIME-Version: 1.0
References: <20250519175348.11924-1-robdclark@gmail.com>
In-Reply-To: <20250519175348.11924-1-robdclark@gmail.com>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 20 May 2025 07:15:32 +1000
X-Gm-Features: AX0GCFs4JnXwsJdajW1l7s7toaeaNTWjF5f0e497pSZ8wodPL0eA75PFrE0O5i4
Message-ID: <CAPM=9tw183FMOT8uUacqegnb5CREAyr8KbXxO2mCuFK-SmUB1A@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-7.75 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.65)[98.43%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.42:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,chromium.org,quicinc.com,igalia.com,arndb.de,mainlining.org,kode54.net,oss.qualcomm.com,kernel.org,lists.linux.dev,ziepe.ca,oracle.com,marek.ca,linaro.org,intel.com,lists.linaro.org,lists.infradead.org,somainline.org,nvidia.com,arm.com,poorly.run];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: AF9E740C77
X-Spamd-Bar: -------
Message-ID-Hash: DUQXPYRBEGCM7MRPQ3G745GG3Y7CDHCD
X-Message-ID-Hash: DUQXPYRBEGCM7MRPQ3G745GG3Y7CDHCD
X-MailFrom: airlied@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Connor Abbott <cwabbott0@gmail.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, =?UTF-8?Q?Andr=C3=A9_Almeida?= <andrealmeid@igalia.com>, Arnd Bergmann <arnd@arndb.de>, =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>, Christopher Snowhill <chris@kode54.net>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Eugene Lepshy <fekz115@gmail.com>, "open list:IOMMU SUBSYSTEM" <iommu@lists.linux.dev>, Jason Gunthorpe <jgg@ziepe.ca>, Jessica Zhang <quic_jesszhan@quicinc.com>, Joao Martins <joao.m.martins@oracle.com>, Jonathan Marek <jonathan@marek.ca>, Jun Nie <jun.nie@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Konrad Dybcio <konradybcio@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-si
 g@lists.linaro.org>, "m oderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, Nicolin Chen <nicolinc@nvidia.com>, "Rob Herring (Arm)" <robh@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Sean Paul <sean@poorly.run>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 00/40] drm/msm: sparse / "VM_BIND" support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DUQXPYRBEGCM7MRPQ3G745GG3Y7CDHCD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 20 May 2025 at 03:54, Rob Clark <robdclark@gmail.com> wrote:
>
> From: Rob Clark <robdclark@chromium.org>
>
> Conversion to DRM GPU VA Manager[1], and adding support for Vulkan Sparse
> Memory[2] in the form of:
>
> 1. A new VM_BIND submitqueue type for executing VM MSM_SUBMIT_BO_OP_MAP/
>    MAP_NULL/UNMAP commands
>
> 2. A new VM_BIND ioctl to allow submitting batches of one or more
>    MAP/MAP_NULL/UNMAP commands to a VM_BIND submitqueue
>
> I did not implement support for synchronous VM_BIND commands.  Since
> userspace could just immediately wait for the `SUBMIT` to complete, I don't
> think we need this extra complexity in the kernel.  Synchronous/immediate
> VM_BIND operations could be implemented with a 2nd VM_BIND submitqueue.

This seems suboptimal for Vulkan userspaces. non-sparse binds are all
synchronous, you are adding an extra ioctl to wait, or do you manage
these via a different mechanism?

Dave.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
