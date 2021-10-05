Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 21610422537
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:38:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B938608CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:38:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 958A360C29; Tue,  5 Oct 2021 11:38:00 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4969605DA;
	Tue,  5 Oct 2021 11:37:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 93705604FD
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 686816056F; Tue,  5 Oct 2021 11:37:48 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 47137604FD
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:46 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id k7so36614791wrd.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=164W6w6LWLW8NebvBaOQLdQNgGQ7HT0mCWe77mt2uTA=;
 b=CVGpci/DUifH+cgn4zVZt0u6zvgxk8H2IkT1tiTjfOKlQiOCIbrDrSklxXM2z4uGwE
 NPqUwPXZFpzcRctflKI6m1aRUvSYBlcbC/PZgTtELEiGcpxWAg+4kU8w1ldMrIoNsJW0
 8KdAGK497O4rOkHHwC17PZ7l/kbI6ISm505CNzIYLDUMp9HoZWkfWeytfAAip6GovSxK
 9GWyebTKN9uN+9tyUeGC+ao/jx3lI8SHVHpt6fkEGLdf2F/+kJCXfZyhufV7wSHh49Gb
 aPmivEB/q1wGlJFItDX50C6gvlE0q82iL7o0UA2dmh+3rXFsZKNlEpzvfag1L/CxqCDp
 jMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=164W6w6LWLW8NebvBaOQLdQNgGQ7HT0mCWe77mt2uTA=;
 b=G6aKQSEYrP7051LcrvSqWWP1o7f1yQWbbz8h3iliPqJ8mReSrYx/1HIVwGZDVdMjPP
 ySJmwdxzHh0/wSJLlP6BZ/4R0rEfK0rfAvwD+bR17SLkdlfnORtYhXtkIxXXzDldzEiR
 vn5Qw4yP+FtNjSsgyGsvc/njaEllRrEy9srxUbkGb08/lBAMG4Cb+yZ9BXxGS9C7UE+a
 KtAcqGGjh7ATRxl+mBDLS0Yrk955DqSZziV+fEa2+k/IyOYLM/iZg0DNSbq2oxvivbfI
 ZK21Wc9wp8TQNVEmfP7KaPVJbnOWZdmv39pPN7x88mdX2/Fs83AJPV8WdMMMjGsnsail
 vmhg==
X-Gm-Message-State: AOAM533F8BkFPcBcrNkwFLL3MzBvBpOPrvKZ/24LYXND5RDNr2GhMlX+
 ZGOmVnJRKPfHOpQDXPMX+s1nq71LQ28=
X-Google-Smtp-Source: ABdhPJyhqXRR6L5iPjlJy84F/JJ9ouoYwQ3pgClwPtPCzqX3Ce9742XSqFnuYdjXcMF2edgJm2bXlA==
X-Received: by 2002:adf:a2c4:: with SMTP id t4mr21433926wra.296.1633433865218; 
 Tue, 05 Oct 2021 04:37:45 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:37:44 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:14 +0200
Message-Id: <20211005113742.1101-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] Deploying new iterator interface for dma-buf
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi guys,

a few more bug fixes, looks like the more selftests I add the more odies I find.

Assuming the CI tests now pass I will start pushing patches I've already got an rb for to drm-misc-next.

Please review and/or comment,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
