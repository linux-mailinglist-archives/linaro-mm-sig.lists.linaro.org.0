Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 14071611797
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 18:35:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4A0B3F5B9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 16:35:23 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by lists.linaro.org (Postfix) with ESMTPS id E5B743F573
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 16:35:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=iVRKB99b;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.167.50 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-lf1-f50.google.com with SMTP id j4so9226886lfk.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 09:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dDdem09UvQC6RtPh9eP/fPIosZi0f2DCCtFcOfni9E0=;
        b=iVRKB99bCuGg75YHK5Jin6eKXNVe9XeG9Wu8TuxvOpZO8X9g0HtdOKXe+lJnotbapy
         yY1d/TS43YunRmZBAdM4kiS1Sb8vvY1JzgsNRODuo9qg+niv7CXg1LdbK/MFiVHVTCVh
         uZZlAnEomqAMCPuV5LXMWtWwirMKSIYACBgbeq/QvJ2NTjC6iw3aocNENCpW3yfSF+VF
         h4Np4qcUKUFrsMntcE0udkLz1iH8nhF4d+Vl8ryBfkZ1woIlFqAplaVWyTnQlJUeIlwr
         w9vUx8zv8jyRRFHooTylzter5G7/0iRYvFvfCgrWmJ1KX4Ui/6vhhI2pxLyUISlF4kgT
         PF/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dDdem09UvQC6RtPh9eP/fPIosZi0f2DCCtFcOfni9E0=;
        b=Q2gGJydlou7c1HcOpNEPNCT9Caz5Vo09KEu/kaTwk+v+uvQnORzWpupS6JkEdwDUEX
         /GY6+dr6rMy1lM6NFph831ZtQBFhrHcPb/3O1oCGRz07IPOMl8P3ChAUN5EMeKBDuX0D
         +X0cFCBVXSBNFpIOe5rT3la37cV1MzOUw07wicHHni5+/lRbZmNfC49OeeJL6TmvprQG
         Dl/WWJ45ArQYGCKrubkKh0WKcy3GsaoEIR9giCLkHB5R6At7SJR+WfLpED1JEM5JH83b
         MGFuniDs+o509Padl/qnfcQMtbTQQnICWYTjyBQpz6sEnTbfbBqh3fVobFOguVGWwfcQ
         XS+g==
X-Gm-Message-State: ACrzQf078ay7GDYOWlxudGEYa8bqRcxFMl4k2UJ2H0kphpoBHeRiH0wb
	WHJTGPwYCgXFUYrdvhttCscvTZvqy+oaexOtYtIv
X-Google-Smtp-Source: AMsMyM4GCKg+Wc/lMbvqmo5qiLQjfqMXoXH+QadR3RXEfZMfTqJByvQ611ruQrIRULNKM67OA8DPiAstRGkRDG9JZno=
X-Received: by 2002:a05:6512:2616:b0:4a2:1723:cf40 with SMTP id
 bt22-20020a056512261600b004a21723cf40mr80364lfb.354.1666974906701; Fri, 28
 Oct 2022 09:35:06 -0700 (PDT)
MIME-Version: 1.0
References: <20221028065533.23856-1-mark-pk.tsai@mediatek.com>
In-Reply-To: <20221028065533.23856-1-mark-pk.tsai@mediatek.com>
From: John Stultz <jstultz@google.com>
Date: Fri, 28 Oct 2022 09:34:55 -0700
Message-ID: <CANDhNCpWcfMfXKHU7rHSUXd8e0JcAnD+qJABWCs9rWTC_J3h6g@mail.gmail.com>
To: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: E5B743F573
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.167.50:from];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,codeaurora.org,redhat.com,arm.com,amd.com,gmail.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.50:from];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: SNPFAS3XYSHIJBC4T7JQEK66I7FD7T2P
X-Message-ID-Hash: SNPFAS3XYSHIJBC4T7JQEK66I7FD7T2P
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, yj.chiang@mediatek.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: cma_heap: Remove duplicated 'by' in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SNPFAS3XYSHIJBC4T7JQEK66I7FD7T2P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Oct 27, 2022 at 11:55 PM Mark-PK Tsai <mark-pk.tsai@mediatek.com> wrote:
>
> Remove duplicated 'by' from comment in cma_heap_allocate().
>
> Signed-off-by: Mark-PK Tsai <mark-pk.tsai@mediatek.com>

Thanks for sending this and going through a few iterations!

Acked-by: John Stultz <jstultz@google.com>

-john
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
