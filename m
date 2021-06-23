Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE7A3B1F93
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 19:33:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3014A63520
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 17:33:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 00D2861A29; Wed, 23 Jun 2021 17:33:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92F8E6117F;
	Wed, 23 Jun 2021 17:33:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5B7E56049C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 17:33:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 511036117F; Wed, 23 Jun 2021 17:33:13 +0000 (UTC)
Received: from mx1.smtp.larsendata.com (mx1.smtp.larsendata.com
 [91.221.196.215])
 by lists.linaro.org (Postfix) with ESMTPS id 1BB766049C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 17:33:10 +0000 (UTC)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx1.smtp.larsendata.com (Halon) with ESMTPS
 id 1d5dfc72-d449-11eb-960d-0050568c148b;
 Wed, 23 Jun 2021 17:33:25 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id F23E4194B41;
 Wed, 23 Jun 2021 19:33:10 +0200 (CEST)
Date: Wed, 23 Jun 2021 19:33:05 +0200
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YNNwUTxK1tir+yv1@ravnborg.org>
References: <20210622165511.3169559-3-daniel.vetter@ffwll.ch>
 <20210623161712.3370885-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210623161712.3370885-1-daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Switch to inline kerneldoc
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
Cc: Deepak R Varma <mh12gx2825@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Nirmoy Das <nirmoy.das@amd.com>,
 Chen Li <chenli@uniontech.com>, Dave Airlie <airlied@redhat.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi Daniel, looks good.

On Wed, Jun 23, 2021 at 06:17:12PM +0200, Daniel Vetter wrote:
> Also review & update everything while we're at it.
> =

> This is prep work to smash a ton of stuff into the kerneldoc for
> @resv.
> =

> v2: Move the doc for sysfs_entry.attachment_uid to the right place too
> (Sam)
> =

> Acked-by: Christian K=F6nig <christian.koenig@amd.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Alex Deucher <alexander.deucher@amd.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Nirmoy Das <nirmoy.das@amd.com>
> Cc: Deepak R Varma <mh12gx2825@gmail.com>
> Cc: Chen Li <chenli@uniontech.com>
> Cc: Kevin Wang <kevin1.wang@amd.com>
> Cc: linux-media@vger.kernel.org
> Cc: linaro-mm-sig@lists.linaro.org
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
