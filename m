Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A417EB4B7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Nov 2023 17:24:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 383134121C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Nov 2023 16:24:21 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 70AC03F31E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Nov 2023 16:24:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=MOBhll3t;
	dmarc=pass (policy=none) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of dakr@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=dakr@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699979045;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OMAt2bbB2OtDJnSmDdv+SlogJ2MSXP9BdKgitEjjES4=;
	b=MOBhll3t70mujD+V3M6p6KdQro+7Ycw5hYiOhhdGMsMshPkfC6L9yWklMZQmJPu0Ty2gG/
	k/6I+s2QNBHbFnEoS38oTelU9LexWA+chTe1ANEES6HFbJpLTD6Ck0lH3TWD4cr2YEYskD
	J2zNsc8t9ymHmBqsOwYwWb3ElnC8Wnc=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-219-N_I7LAtGOgiULlExMTSXEQ-1; Tue, 14 Nov 2023 11:24:03 -0500
X-MC-Unique: N_I7LAtGOgiULlExMTSXEQ-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-670b675b2c5so73997726d6.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Nov 2023 08:24:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699979043; x=1700583843;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OMAt2bbB2OtDJnSmDdv+SlogJ2MSXP9BdKgitEjjES4=;
        b=Kh+KBNz32AS6eRHm1U2AwSA8/kfIgYF2rRLeXI/5i7cI2458+U77tOGCFd3vwp7308
         sZPp/Q3rb0QpEMfuq2paPJEJSfk2ptTgiDrtXjnBl/i4+bZJuCTXVw+zz7dX7fpU1edY
         QXi+Zqw5TvDwoBU83x8UNsKhjKGLwY6uE5Ef6kSOyAhogXB/xEsepWMIGMBYwemVjRTI
         3Tlo8vXJvAcRQhgCxjM9gPpJh4KATJOiwVAmPS7+4aXK8dQP2MxFtkvfyR6LmECy6liZ
         8MKKI3CX/OtfpxDU0qixju7xKxgYzizuxtOfjGoX2CtCoeOIER6Wlyp5DqPcip2RFqwR
         ZKFQ==
X-Gm-Message-State: AOJu0YwZZYA6ZDO/ZzvC6ZGLFU2OwggVzlX3dyYk2HpVBM32oDb2e/Xf
	xhuEfQORFPGVp9tVC5TTfuu8cZLpn/2uZIAxrGOH4g45ByvNUqG9jFY/eZcljhWxWEJ/pAMg4c/
	5rTVyUcNPAbM46WI3FhA5xSsKntU=
X-Received: by 2002:a05:6214:326:b0:66d:630a:79b9 with SMTP id j6-20020a056214032600b0066d630a79b9mr2571512qvu.40.1699979043486;
        Tue, 14 Nov 2023 08:24:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHi30kHAx5KL8eGl/LlTeExArejiri6J6i2eS/UN/F1fLR88NH5AhNiHw7NXj2GlJ54m2/4ew==
X-Received: by 2002:a05:6214:326:b0:66d:630a:79b9 with SMTP id j6-20020a056214032600b0066d630a79b9mr2571490qvu.40.1699979043228;
        Tue, 14 Nov 2023 08:24:03 -0800 (PST)
Received: from ?IPV6:2a02:810d:4b3f:de9c:abf:b8ff:feee:998b? ([2a02:810d:4b3f:de9c:abf:b8ff:feee:998b])
        by smtp.gmail.com with ESMTPSA id ee11-20020a0562140a4b00b0066d0ab215b5sm3054571qvb.13.2023.11.14.08.24.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Nov 2023 08:24:02 -0800 (PST)
Message-ID: <6a1ebcef-bade-45a0-9bd9-c05f0226eb88@redhat.com>
Date: Tue, 14 Nov 2023 17:23:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yuran Pereira <yuran.pereira@hotmail.com>, airlied@gmail.com
References: <DB3PR10MB6835FA6E15F3C830FC793D2EE8DDA@DB3PR10MB6835.EURPRD10.PROD.OUTLOOK.COM>
From: Danilo Krummrich <dakr@redhat.com>
Organization: RedHat
In-Reply-To: <DB3PR10MB6835FA6E15F3C830FC793D2EE8DDA@DB3PR10MB6835.EURPRD10.PROD.OUTLOOK.COM>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 70AC03F31E
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.19 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[170.10.129.124:from];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[hotmail.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	DNSWL_BLOCKED(0.00)[170.10.129.124:from,2a02:810d:4b3f:de9c:abf:b8ff:feee:998b:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.219.72:received]
X-Rspamd-Action: no action
Message-ID-Hash: DU52TY6DVFYSJJ3JCRT7F2W7MAHSAYMY
X-Message-ID-Hash: DU52TY6DVFYSJJ3JCRT7F2W7MAHSAYMY
X-MailFrom: dakr@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kherbst@redhat.com, lyude@redhat.com, daniel@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel-mentees@lists.linuxfoundation.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/nouveau: Prevents NULL pointer dereference in nouveau_uvmm_sm_prepare
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DU52TY6DVFYSJJ3JCRT7F2W7MAHSAYMY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Yuran,

On 10/26/23 19:03, Yuran Pereira wrote:
> There are instances where the "args" argument passed to
> nouveau_uvmm_sm_prepare() is NULL.
> 
> I.e. when nouveau_uvmm_sm_prepare() is called from
> nouveau_uvmm_sm_unmap_prepare()
> 
> ```
> static int
> nouveau_uvmm_sm_unmap_prepare(struct nouveau_uvmm *uvmm,
> ...
> {
>      return nouveau_uvmm_sm_prepare(uvmm, new, ops, NULL);
> }
> ```
> 
> The problem is that op_map_prepare() which nouveau_uvmm_sm_prepare
> calls, dereferences this value, which can lead to a NULL pointer
> dereference.

op_map_prepare() can't be called with `args` being NULL, since when called
through nouveau_uvmm_sm_unmap_prepare() we can't hit the DRM_GPUVA_OP_MAP
case at all.

Unmapping something never leads to a new mapping being created, it can lead
to remaps though.

> 
> ```
> static int
> op_map_prepare(struct nouveau_uvmm *uvmm,
> ...
> {
>      ...
>      uvma->region = args->region; <-- Dereferencing of possibly NULL pointer
>      uvma->kind = args->kind;     <--
>      ...
> }
> ```
> 
> ```
> static int
> nouveau_uvmm_sm_prepare(struct nouveau_uvmm *uvmm,
> ...
>              struct uvmm_map_args *args)
> {
>      struct drm_gpuva_op *op;
>      u64 vmm_get_start = args ? args->addr : 0;
>      u64 vmm_get_end = args ? args->addr + args->range : 0;
>      int ret;
> 
>      drm_gpuva_for_each_op(op, ops) {
>          switch (op->op) {
>          case DRM_GPUVA_OP_MAP: {
>              u64 vmm_get_range = vmm_get_end - vmm_get_start;
> 
>              ret = op_map_prepare(uvmm, &new->map, &op->map, args); <---
>              if (ret)
>                  goto unwind;
> 
>              if (args && vmm_get_range) {
>                  ret = nouveau_uvmm_vmm_get(uvmm, vmm_get_start,
>                                 vmm_get_range);
>                  if (ret) {
>                      op_map_prepare_unwind(new->map);
>                      goto unwind;
>                  }
>              }
>      ...
> ```
> 
> Since the switch "case DRM_GPUVA_OP_MAP", also NULL checks "args"

This check is not required for the reason given above. If you like, you
can change this patch up to remove the args check and add a comment like:

/* args can't be NULL when called for a map operation. */

> after the call to op_map_prepare(), my guess is that we should
> probably relocate this check to a point before op_map_prepare()
> is called.

Yeah, I see how this unnecessary check made you think so.

- Danilo

> 
> This patch ensures that the value of args is checked before
> calling op_map_prepare()
> 
> Addresses-Coverity-ID: 1544574 ("Dereference after null check")
> Signed-off-by: Yuran Pereira <yuran.pereira@hotmail.com>
> ---
>   drivers/gpu/drm/nouveau/nouveau_uvmm.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/nouveau/nouveau_uvmm.c b/drivers/gpu/drm/nouveau/nouveau_uvmm.c
> index aae780e4a4aa..6baa481eb2c8 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_uvmm.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_uvmm.c
> @@ -620,11 +620,14 @@ nouveau_uvmm_sm_prepare(struct nouveau_uvmm *uvmm,
>   		case DRM_GPUVA_OP_MAP: {
>   			u64 vmm_get_range = vmm_get_end - vmm_get_start;
>   
> +			if (!args)
> +				goto unwind;
> +
>   			ret = op_map_prepare(uvmm, &new->map, &op->map, args);
>   			if (ret)
>   				goto unwind;
>   
> -			if (args && vmm_get_range) {
> +			if (vmm_get_range) {
>   				ret = nouveau_uvmm_vmm_get(uvmm, vmm_get_start,
>   							   vmm_get_range);
>   				if (ret) {

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
