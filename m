Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A24A181A56
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 14:52:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A423865FE2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 13:52:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9907865FE3; Wed, 11 Mar 2020 13:52:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 635C365FB9;
	Wed, 11 Mar 2020 13:52:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EB405619B5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 13:52:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D238E60804; Wed, 11 Mar 2020 13:52:02 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id C107E60804
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 13:52:01 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id l18so2688268wru.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 06:52:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5PhxfGnB0bi/gRdfMRgwxp+GcrZerOX4kQOU9IbhHZA=;
 b=my1L4s6X6oK8OtlIC5pNjaz4mk4H21CyFli6R14L71fI7thATLXtrggde9rb/w6Wii
 FcQyiCv/6gD3XqUQa4BpuPh8M3wpMcqBgkOSFBQv9Cf9i+Nzywor/zJHuDz2s8ZPGpDm
 MtKVKVs6W6d+j5HV783/Cn8IEWm+wplRS5dNBm3gsimaqnPKQqt6TK27r9qDpVktlxcv
 RwgQ94NzADE4N7GWamkfSGNMcfWRyfojizNNSzWiqKs8aPYT8X1mtb3T5cvs1qYul6Hf
 9WzyA9R8Bfx9Oj/F81BrCx2VxDLr34uewFDk1bPQvShy5Q11r8FtmjC4iCVU1383hhDo
 DhtA==
X-Gm-Message-State: ANhLgQ1UhmjjG4r5TJcLhVOqlZ/chzXKnoQDVrmPVlFIv5GJjg8gFIn0
 BbBixVAkIaJja9QnVAOF0n0=
X-Google-Smtp-Source: ADFU+vsbcw4rcvimyCnA6PJVUVnMRN0NAEKodMUwcQvB+YmthLNI/yMnz9IvZqCGyifYCK9lhcBn7g==
X-Received: by 2002:a5d:56ca:: with SMTP id m10mr4782708wrw.313.1583934720965; 
 Wed, 11 Mar 2020 06:52:00 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8dc:e796:e7da:a319])
 by smtp.gmail.com with ESMTPSA id 138sm3183811wmb.21.2020.03.11.06.52.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 06:52:00 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: David1.Zhou@amd.com, hch@infradead.org, jgg@ziepe.ca, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 14:51:52 +0100
Message-Id: <20200311135158.3310-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] P2P for DMA-buf
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBpcyB0aGUgdGhpcmQgYW5kIGZpbmFsIHBhcnQgb2YgbXkgc2VyaWVzIHRvIHN0YXJ0IHN1
cHBvcnRpbmcgUDJQIHdpdGggRE1BLWJ1Zi4KClRoZSBpbXBsZW1lbnRhdGlvbiBpcyBzdHJhaWdo
dCBmb3J3YXJkLCBhcGFydCBmcm9tIGEgaGVscGVyIHRvIGFpZCBjb25zdHJ1Y3Rpbmcgc2NhdHRl
cmxpc3RzIHdpdGhvdXQgaGF2aW5nIHN0cnVjdCBwYWdlcyB3ZSBvbmx5IGFkZCBhIG5ldyBmbGFn
IGluZGljYXRpbmcgdGhhdCBhbiBETUEtYnVmIGltcG9ydGVyIGNhbiBoYW5kbGUgcGVlcjJwZWVy
LgoKVGhlIGV4cG9ydGVyIGNhbiB0aGVuIGNoZWNrIGlmIFAyUCBpcyBnZW5lcmFsIHBvc3NpYmxl
IHVzaW5nIHRoZSBwY2lfcDJwZG1hX2Rpc3RhbmNlX21hbnkoKSBmdW5jdGlvbiBhbmQgaWYgbmVj
ZXNzYXJ5IGNhbiBhbHNvIGNsZWFyIHRoZSBmbGFnLgoKVGhlIHJlc3QgaXMgYW4gZXhhbXBsZSBo
b3cgdG8gaW1wbGVtZW50aW5nIHRoZSBuZWNlc3NhcnkgZnVuY3Rpb25hbGl0eSBpbnRvIHRoZSBh
bWRncHUgZHJpdmVyIHRvIHNldHVwIHNjYXR0ZXJsaXN0cyBwb2ludGluZyB0byBkZXZpY2UgbWVt
b3J5LgoKUGxlYXNlIHJldmlldyBhbmQgY29tbWVudCwKQ2hyaXN0aWFuLgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
