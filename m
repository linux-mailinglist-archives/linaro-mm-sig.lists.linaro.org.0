Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5B2181A68
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 14:53:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DDBF65FE6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 13:53:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F2E3565FE9; Wed, 11 Mar 2020 13:53:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 041AA65FD7;
	Wed, 11 Mar 2020 13:52:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 03FF56184D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 13:52:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EA74265FB9; Wed, 11 Mar 2020 13:52:03 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id C7C9F6184D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 13:52:02 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id v11so2701951wrm.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 06:52:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zTmN9DEXOaBKxy4tMmFv7mOnUJY2ke5/2F4me6DvZxM=;
 b=fzNp7jnECdZuuF4rPazkGsgxE09sNFL7iiLIcDZW0SBK9aov/I39vBvshjbsvZf7xg
 U4uTlq/+0cpJpw1o45HH5uh0pFi9dXtlsFOfD3QD/Vs9Jea3U8MhaMP0gry43Z/6MW8G
 CSt3cHrWxOt8TgFAhmbIEJrawHOALPIriEBfYViBKRH6lFw2kRAGD316vSzQZSCGYpG6
 AY3w1lbbJeXfxgD20gqc8SAwcE51PudSyk+1R92f8OThmWKVO1mOFVTbj8NfpTVLycsA
 jdhoYeoFR07dJbuciK2nmDpOhqi2P0ocou+aALmwv8A/Rx+ENeqDIiZD6xaInbDXhAyx
 0rbw==
X-Gm-Message-State: ANhLgQ1C4s+pDIfDYXcOpv4NGxfalhOhnUNuqD+OXxqxiNyg/VPK0/LE
 MNtNzyY5TCMT00gZeu7Pv8E=
X-Google-Smtp-Source: ADFU+vsOOz12ce5eYJpqK2qbmEnKZS+AmEeu/Oz2KmbCkMjsmBPhswTyMx1kwU26TJkE3M/mMkmkIQ==
X-Received: by 2002:a5d:6208:: with SMTP id y8mr4791359wru.64.1583934721964;
 Wed, 11 Mar 2020 06:52:01 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8dc:e796:e7da:a319])
 by smtp.gmail.com with ESMTPSA id 138sm3183811wmb.21.2020.03.11.06.52.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 06:52:01 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: David1.Zhou@amd.com, hch@infradead.org, jgg@ziepe.ca, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 14:51:53 +0100
Message-Id: <20200311135158.3310-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311135158.3310-1-christian.koenig@amd.com>
References: <20200311135158.3310-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 1/6] lib/scatterlist: add sg_set_dma_addr()
	function
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

VGhpcyBjYW4gYmUgdXNlZCBieSBkcml2ZXJzIHRvIHNldHVwIFAyUCBETUEgYmV0d2VlbiBkZXZp
Y2UKbWVtb3J5IHdoaWNoIGlzIG5vdCBiYWNrZWQgYnkgc3RydWN0IHBhZ2VzLgoKVGhlIGRyaXZl
cnMgb2YgdGhlIGludm9sdmVkIGRldmljZXMgYXJlIHJlc3BvbnNpYmxlIGZvcgpzZXR0aW5nIHVw
IGFuZCB0ZWFyaW5nIGRvd24gRE1BIGFkZHJlc3NlcyBhcyBuZWNlc3NhcnkKdXNpbmcgZG1hX21h
cF9yZXNvdXJjZSgpLgoKVGhlIHBhZ2UgcG9pbnRlciBpcyBzZXQgdG8gTlVMTCBhbmQgb25seSB0
aGUgRE1BIGFkZHJlc3MsCmxlbmd0aCBhbmQgb2Zmc2V0IHZhbHVlcyBhcmUgdmFsaWQuCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0t
LQogaW5jbHVkZS9saW51eC9zY2F0dGVybGlzdC5oIHwgMjMgKysrKysrKysrKysrKysrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9zY2F0dGVybGlzdC5oIGIvaW5jbHVkZS9saW51eC9zY2F0dGVybGlzdC5oCmluZGV4
IDZlZWM1MGZiMzZjOC4uMjhhNDc3YmYwYmRmIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L3Nj
YXR0ZXJsaXN0LmgKKysrIGIvaW5jbHVkZS9saW51eC9zY2F0dGVybGlzdC5oCkBAIC0xNDUsNiAr
MTQ1LDI5IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBzZ19zZXRfYnVmKHN0cnVjdCBzY2F0dGVybGlz
dCAqc2csIGNvbnN0IHZvaWQgKmJ1ZiwKIAlzZ19zZXRfcGFnZShzZywgdmlydF90b19wYWdlKGJ1
ZiksIGJ1Zmxlbiwgb2Zmc2V0X2luX3BhZ2UoYnVmKSk7CiB9CiAKKy8qKgorICogc2dfc2V0X2Rt
YV9hZGRyIC0gU2V0IHNnIGVudHJ5IHRvIHBvaW50IGF0IHNwZWNpZmllZCBkbWEgYWRkcmVzcwor
ICogQHNnOgkJIFNHIGVudHJ5CisgKiBAYWRkcmVzczoJIERNQSBhZGRyZXNzIHRvIHNldAorICog
QGxlbjoJIExlbmd0aCBvZiBkYXRhCisgKiBAb2Zmc2V0OgkgT2Zmc2V0IGludG8gcGFnZQorICoK
KyAqIERlc2NyaXB0aW9uOgorICogICBVc2UgdGhpcyBmdW5jdGlvbiB0byBzZXQgYW4gc2cgZW50
cnkgdG8gcG9pbnQgdG8gZGV2aWNlIHJlc291cmNlcyBtYXBwZWQKKyAqICAgdXNpbmcgZG1hX21h
cF9yZXNvdXJjZSgpLiBUaGUgcGFnZSBwb2ludGVyIGlzIHNldCB0byBOVUxMIGFuZCBvbmx5IHRo
ZSBETUEKKyAqICAgYWRkcmVzcywgbGVuZ3RoIGFuZCBvZmZzZXQgdmFsdWVzIGFyZSB2YWxpZC4K
KyAqCisgKiovCitzdGF0aWMgaW5saW5lIHZvaWQgc2dfc2V0X2RtYV9hZGRyKHN0cnVjdCBzY2F0
dGVybGlzdCAqc2csIGRtYV9hZGRyX3QgYWRkcmVzcywKKwkJCQkgICB1bnNpZ25lZCBpbnQgbGVu
LCB1bnNpZ25lZCBpbnQgb2Zmc2V0KQoreworCXNnX3NldF9wYWdlKHNnLCBOVUxMLCBsZW4sIG9m
ZnNldCk7CisJc2ctPmRtYV9hZGRyZXNzID0gYWRkcmVzczsKKyNpZmRlZiBDT05GSUdfTkVFRF9T
R19ETUFfTEVOR1RICisJc2ctPmRtYV9sZW5ndGggPSBsZW47CisjZW5kaWYKK30KKwogLyoKICAq
IExvb3Agb3ZlciBlYWNoIHNnIGVsZW1lbnQsIGZvbGxvd2luZyB0aGUgcG9pbnRlciB0byBhIG5l
dyBsaXN0IGlmIG5lY2Vzc2FyeQogICovCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
