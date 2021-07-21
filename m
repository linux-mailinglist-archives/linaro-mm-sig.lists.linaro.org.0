Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC3F3D1366
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jul 2021 18:11:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6FA526314C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jul 2021 16:11:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 389FB63148; Wed, 21 Jul 2021 16:10:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE52461A3E;
	Wed, 21 Jul 2021 16:10:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B3D2260AA0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jul 2021 16:10:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A72F161A3E; Wed, 21 Jul 2021 16:10:53 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 8F59060AA0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jul 2021 16:10:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2E7676100C;
 Wed, 21 Jul 2021 16:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1626883850;
 bh=ATbjR5e/Nku6Q63BGC31Ok9sISkS6hGpkLuuBaaVK0Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dol824DpEIFytbAdGqq/PDZ6qvwrlmYA0/I30RpnGDx5eI1H5r7mz2Uluikvk6H2b
 94y/V0u2mQAFGKQ6f8OxAlL7CDOfKQs/DfLYglF814izLaj2QLlHqxB3qeE/eKzEl6
 fpglALaLsBsDYft2N5h9wHE2RAdXUrDlisT8dtsA=
Date: Wed, 21 Jul 2021 18:10:48 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Oded Gabbay <ogabbay@kernel.org>
Message-ID: <YPhHCIoHzMnbIfeF@kroah.com>
References: <20210711140601.7472-1-ogabbay@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210711140601.7472-1-ogabbay@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v5 0/2] Add p2p via dmabuf to habanalabs
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
Cc: linux-rdma@vger.kernel.org, sleybo@amazon.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, galpress@amazon.com,
 linaro-mm-sig@lists.linaro.org, jgg@ziepe.ca, dledford@redhat.com, hch@lst.de,
 amd-gfx@lists.freedesktop.org, alexander.deucher@amd.com,
 christian.koenig@amd.com, leonro@nvidia.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Sun, Jul 11, 2021 at 05:05:59PM +0300, Oded Gabbay wrote:
> Hi,
> This is v5 of this patch-set following again a long email thread.
> 
> It contains fixes to the implementation according to the review that Jason
> did on v4. Jason, I appreciate your feedback. If you can take another look
> to see I didn't miss anything that would be great.
> 
> The details of the fixes are in the changelog in the commit message of
> the second patch.
> 
> There was one issue with your proposal to set the orig_nents to 0. I did
> that, but I also had to restore it to nents before calling sg_free_table
> because that function uses orig_nents to iterate.

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
