Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DBF42F007
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Oct 2021 13:57:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0424263239
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Oct 2021 11:57:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3FF35629CD; Fri, 15 Oct 2021 11:57:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76951617DA;
	Fri, 15 Oct 2021 11:57:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B3B0C617B3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Oct 2021 11:57:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B1AE06197B; Fri, 15 Oct 2021 11:57:27 +0000 (UTC)
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by lists.linaro.org (Postfix) with ESMTPS id 9373E617B3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Oct 2021 11:57:25 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 15 Oct 2021 13:57:18 +0200
Message-Id: <20211015115720.79958-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 0/2] dma-buf: Fix breakages from
 dma_resv_iter conversion.
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
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Urgent fixes!

dma_resv_test_signaled is completely broken, dma_resv_wait_timeout kind of broken.

Maarten Lankhorst (2):
  dma-buf: Fix dma_resv_wait_timeout handling of timeout = 0.
  dma-buf: Fix dma_resv_test_signaled.

 drivers/dma-buf/dma-resv.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

-- 
2.33.0

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
