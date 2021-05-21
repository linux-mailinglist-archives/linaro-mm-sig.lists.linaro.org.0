Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A4738C66C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 14:23:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 913F0614C5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 12:23:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 656CC6182C; Fri, 21 May 2021 12:22:59 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 917E46149A;
	Fri, 21 May 2021 12:22:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A8AF561475
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 12:22:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9D21D61493; Fri, 21 May 2021 12:22:54 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 9096761475
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 12:22:52 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id r12so20890143wrp.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 05:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tXzqoTh9Q6otGWSG/m2z4V/r+EdDHQXeOAwek5k1Apw=;
 b=fhGWDMtRWPPjaQRts6ngbU7RFDRPLZxsO/dYPBecxs11qDVpGOrqwFwTAclyPM2NM3
 nJP9nH1WfXkimY2pRXSwkgLLRAM1hH5iq2wdhk6yXFysmb/2V3dCMD+m/r8bCg5pCu20
 ytbeUFu8HYocl8xDkZD07SCx8OTWunCSNaeGb5HErEc3xvmS5tCcs72NgEZ5msvLwMmJ
 TOWwwzflosPbtN0ZPrkoNPsHKONhitwQCzjd2zYdQDaHymQK32IP8XUOxG5tKCfgtJrg
 sUALcf4OR6cFiuK4C+tykpV7nmZrJeviPP7dL+Zbes4wNiRGNZImMKgqKoXmpnF0BBeO
 sm8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tXzqoTh9Q6otGWSG/m2z4V/r+EdDHQXeOAwek5k1Apw=;
 b=ublwUxNJOW5287T6CcSvLGZ2p1f2QsBrB1jY5Fid0Kn9NIwZ+OTkM6XJ0c9a7MIy1M
 /5EquShb1aTHRv2PxCRCm7QZS7cyE/K+zoA2QsRIWFwGjq40bQERZ4LLiTJ5NQ4yWqd6
 FLFOzy1AkNXm+Y8h3L9QvIvVa5hdVfovYC5Ga0eZnof0+oOvuDSr/GhA85kijO5LmnQt
 HkorwLIlQwtb1A1D5j+uInQD8Nioy7PMOKkmB8MRIBXxFXfoMo7nuFLZ/7AJ8iCmNJ/7
 o9+yycVcj9w/z/TTs/oXtXHFGd4u+QHtrDBRDO5UMwWthd1SdKUtvRDmqFx05zTEh5Se
 WhJA==
X-Gm-Message-State: AOAM531ZQSzfoU3E/ucwKxDLpHqTnCOX9laTph1RgriXfB9A3Gy7Jkrx
 0QFFislS8KtBs6eu3tgzqu3HvJE7Jm0R4soynWYOoA==
X-Google-Smtp-Source: ABdhPJzs6JDh/PVfFHAZiz0tvGCOrZlKRQmwz7h15e9g9pD1J/vW4gLLdrMc8KrEGPgbhOVJa3TJluupr6PSsDmH+Fc=
X-Received: by 2002:adf:e70e:: with SMTP id c14mr9371714wrm.6.1621599771623;
 Fri, 21 May 2021 05:22:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-4-daniel.vetter@ffwll.ch>
In-Reply-To: <20210521090959.1663703-4-daniel.vetter@ffwll.ch>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 21 May 2021 13:22:40 +0100
Message-ID: <CAPj87rMBVRamT+VAVUaUnq3C1KFVqzABi99RKs=1_vyb4YWDnQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 04/11] drm/panfrost: Fix implicit sync
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi,

On Fri, 21 May 2021 at 10:10, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> Currently this has no practial relevance I think because there's not
> many who can pull off a setup with panfrost and another gpu in the
> same system. But the rules are that if you're setting an exclusive
> fence, indicating a gpu write access in the implicit fencing system,
> then you need to wait for all fences, not just the previous exclusive
> fence.
>
> panfrost against itself has no problem, because it always sets the
> exclusive fence (but that's probably something that will need to be
> fixed for vulkan and/or multi-engine gpus, or you'll suffer badly).
> Also no problem with that against display.

Yeah, the 'second-generation Valhall' GPUs coming later this year /
early next year are starting to get pretty weird. Firmware-mediated
job scheduling out of multiple queues, userspace having direct access
to the queues and can do inter-queue synchronisation (at least I think
so), etc. For bonus points, synchronisation is based on $addr = $val
to signal and $addr == $val to wait, with a separate fence primitive
as well.

Obviously Arm should be part of this conversation here, but I guess
we'll have to wait for a while yet to see how everything's shaken out
with this new gen, and hope that whatever's been designed upstream in
the meantime is actually vaguely compatible ...

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
