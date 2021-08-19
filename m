Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C533F1622
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Aug 2021 11:28:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA6C261179
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Aug 2021 09:28:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7704B61444; Thu, 19 Aug 2021 09:28:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DCECD6073C;
	Thu, 19 Aug 2021 09:28:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 913A06050C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Aug 2021 09:28:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 847156073C; Thu, 19 Aug 2021 09:28:08 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id 786E16050C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Aug 2021 09:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=o71atK1N/ttros2m0GUwiV587h5QYRfIAhyzKk18UQQ=; b=iFi3JwVYlsdso3W4Dc3dMUU70s
 XK19q5yE4rJdVY/Sl0nQRrQcs3HQU+QdWs7bY2S/Gr4Tj9PyTUGNzQYrz+Y/khCli0gdeUHxt8xv7
 e2pz+vw0+beWpW7vjuoPPoYDMfBC3OAdeIHdKTl1oeB0gGA7X0MgcsgRDSq2mnM5vYeIQHiVikFMR
 0x51mSFLKcjeUESvZoZOgiRjbGX0bVOyLH5WuUF8c2Np42kh34ZGpOmT+fha6YQwrjP4LMFKFiua0
 qYPF547PsvMrvJF2HGkhmk4YL4o3fnbtOt8l77GP/jH9XCLv4Drdm01suCQ4bDnbNgamIu2S6SXlT
 wVHeRNTw==;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat
 Linux)) id 1mGeJG-004ruk-MC; Thu, 19 Aug 2021 09:26:09 +0000
Date: Thu, 19 Aug 2021 10:26:02 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Message-ID: <YR4jqvZtu0gbaVmx@infradead.org>
References: <20210818073824.1560124-1-desmondcheongzx@gmail.com>
 <20210818073824.1560124-9-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210818073824.1560124-9-desmondcheongzx@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 8/9] kernel: export task_work_add
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
Cc: axboe@kernel.dk, walter-zh.wu@mediatek.com, tzimmermann@suse.de,
 gregkh@linuxfoundation.org, airlied@linux.ie, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, maarten.lankhorst@linux.intel.com,
 oleg@redhat.com, mripard@kernel.org, christian.koenig@amd.com,
 linaro-mm-sig@lists.linaro.org, kernel test robot <lkp@intel.com>,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, skhan@linuxfoundation.org,
 tglx@linutronix.de, linux-kernel-mentees@lists.linuxfoundation.org,
 dvyukov@google.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Aug 18, 2021 at 03:38:23PM +0800, Desmond Cheong Zhi Xi wrote:
> +EXPORT_SYMBOL(task_work_add);

EXPORT_SYMBOL_GPL for this kinds of functionality, please.
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
