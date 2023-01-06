Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 184B4662DEE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jan 2023 19:02:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 29DBE3F244
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jan 2023 18:02:18 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by lists.linaro.org (Postfix) with ESMTPS id 409503ECC0
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Jan 2023 08:09:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=bKGQNv8u;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.128.176 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-476e643d1d5so13500087b3.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 06 Jan 2023 00:09:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Oyf8/xdGIeyv+pywCJ7PHhoImivmp2P3M0qiI+bO/c0=;
        b=bKGQNv8uXrlgWUEXeM3i3nMbH++VCHo5Yd2FIZluObPRD9Ni8ZAV5+Rsoj6oUrunux
         XqkRD57gxFntIkgC6ON5sAmTV6SsUhL4LnjDSvm7OynSk0wYYRv0lYIAA5hvdaDLkNDm
         gbPYNbfbsHYnQVp89GzllLyunTyen147ZckzV03lYPlvUbWzd/IMG3WtxVhrIztaC1at
         8pByiUA4KnBXJednw62cSq5dBytKmZgxy1pm2K4dhwhXBQTSmCd2cRG9/SwCwEdly2Jf
         2wi9KSpffb3Kr/v9ydbdEcaJwaBpYIGum2+0u+8ZyUtmyZF2SUXX6YwJAEb7jr/rtBw8
         EGgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oyf8/xdGIeyv+pywCJ7PHhoImivmp2P3M0qiI+bO/c0=;
        b=r56vOCLOoiuaqXj283aaYHLKvbyCDZ3XMhdf21vztnE3KmGH2UNLM2zz60S8wm90X1
         kz2HCJYtwMGIlsIcIO1SUp9bkoT/4YtuoTj4SXhsPiJKV/buGdgDcXnOCHRlImFSy+dI
         TPNosgWe5trhsjRNAP+faqFPvhdNlf4aHucmwIdvXmYGBL0llm7pllEgxgTeBaXw1uqi
         KSW9i+5iHYq5wPFfLf68RXxg4UpNBkGcgRv13l1mBfdc9+Y3PYXQmKIuxE6pH9/6Dut+
         xHLSI5FDVQAtDT2A+tRDouuylVmOk78rSQ7RIX3O8QQQcUXHkTBgJBU+UxpyNVRmkRVs
         BpPw==
X-Gm-Message-State: AFqh2krstBNFtgLfs+rrRLedwyQ8tffSs+IAsyRh4FKZwNEFtya5JaMK
	CtM/PCdZHrb8GxKzkIdC7YtTaKzTq+eQ0S0wzXZ2Wysb
X-Google-Smtp-Source: AMrXdXsLzL9Cvjgf8Y76dGUlcsqoNvKrwQbdhz65NgGzcCjttxAwInXhnzL11PxiUmdUUMCG8BW0VjLcKK8Mr0JOCOQ=
X-Received: by 2002:a81:1e88:0:b0:432:2458:f6ca with SMTP id
 e130-20020a811e88000000b004322458f6camr7411794ywe.138.1672992547775; Fri, 06
 Jan 2023 00:09:07 -0800 (PST)
MIME-Version: 1.0
References: <20230106013824.27208-1-jiasheng@iscas.ac.cn>
In-Reply-To: <20230106013824.27208-1-jiasheng@iscas.ac.cn>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 6 Jan 2023 10:08:56 +0200
Message-ID: <CAA8EJpqfssbS8VPmBHv6Y26ubJ-mG69tm+yz68OmYBA5_bP9Gw@mail.gmail.com>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FREEMAIL_CC(0.00)[gmail.com,quicinc.com,poorly.run,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,iscas.ac.cn:email];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.176:from];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 409503ECC0
X-Spamd-Bar: --------
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LAF66DAGMBF64RAAEZ7CZ4J7PCPM44EA
X-Message-ID-Hash: LAF66DAGMBF64RAAEZ7CZ4J7PCPM44EA
X-Mailman-Approved-At: Mon, 09 Jan 2023 18:02:05 +0000
CC: robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/msm: Add missing check and destroy for alloc_ordered_workqueue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LAF66DAGMBF64RAAEZ7CZ4J7PCPM44EA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 6 Jan 2023 at 03:38, Jiasheng Jiang <jiasheng@iscas.ac.cn> wrote:
>
> Add check for the return value of alloc_ordered_workqueue as it may return
> NULL pointer.
> Moreover, use the destroy_workqueue in the later fails in order to avoid
> memory leak.
>
> Fixes: c8afe684c95c ("drm/msm: basic KMS driver for snapdragon")
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>

Please resend the patch, including freedreno@ to the cc list.

> ---
>  drivers/gpu/drm/msm/msm_drv.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)



-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
