Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 02535268C36
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Sep 2020 15:30:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B1D1665E9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Sep 2020 13:30:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6708A665F3; Mon, 14 Sep 2020 13:30:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.6 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7AA166179D;
	Mon, 14 Sep 2020 13:29:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0DD7E617F1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 13:29:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 012886179D; Mon, 14 Sep 2020 13:29:30 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by lists.linaro.org (Postfix) with ESMTPS id 115F96179D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 13:29:30 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id a12so17566256eds.13
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 06:29:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O337qWgiQtRxWseaQqzKcsApKROYygDiI0vsqDOyWvw=;
 b=BimelBtFABE5TDh8Y+qpmLRd0H66WFHDfbWroHmjYkUaRYUi+Uf2O9Lg8CKeI4EoR2
 MOI+YJRivcTfdoOPWz/cyly/E8weYCqxHZRfyTUwUSFGxzQ3MLV0xJCR4eq8/zTm93bM
 ALRMU3PzX0pmUrzKTyLh5EzUjdFoEnp8IB49PkmHz4ab4TpUo7B1/WbtqDuDqbbMolNW
 e/c4cTecsFurSJnoxVxUFcWNHpIt+t4ZsS193tznTPm5FuxQu8+bPHZjsmVp/cu6ymgp
 cFjSFlmBLBz5YZo2ZnUH1fW6n5fRsuu8iNWgqo3JBZnltgnEj1iqeZCGZGgRPcEaj1ZG
 SV3g==
X-Gm-Message-State: AOAM532IVs34p/x7K6GIz3v3kROET97sznOy1+IESy+Jb6w80XxNKZKY
 C43W2MHGcSGMUu/2Tny8Ev4=
X-Google-Smtp-Source: ABdhPJwJsiXZY3KpcwY1vzYkVg2ohf4EGDVpkoGXaNUtWvR8WeUIIoXfyp3ei6G37Iy9uvNZbC5ExA==
X-Received: by 2002:aa7:d78f:: with SMTP id s15mr16965480edq.322.1600090169251; 
 Mon, 14 Sep 2020 06:29:29 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:6179:d701:8021:da3d])
 by smtp.gmail.com with ESMTPSA id d6sm9575625edm.31.2020.09.14.06.29.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 06:29:28 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: akpm@linux-foundation.org
Date: Mon, 14 Sep 2020 15:29:18 +0200
Message-Id: <20200914132920.59183-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] Changing vma->vm_file in dma_buf_mmap()
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

SGkgQW5kcmV3LAoKSSdtIHRoZSBuZXcgRE1BLWJ1ZiBtYWludGFpbmVyIGFuZCBEYW5pZWwgYW5k
IG90aGVycyBjYW1lIHVwIHdpdGggcGF0Y2hlcyBleHRlbmRpbmcgdGhlIHVzZSBvZiB0aGUgZG1h
X2J1Zl9tbWFwKCkgZnVuY3Rpb24uCgpOb3cgdGhpcyBmdW5jdGlvbiBpcyBkb2luZyBzb21ldGhp
bmcgYSBiaXQgb2RkIGJ5IGNoYW5naW5nIHRoZSB2bWEtPnZtX2ZpbGUgd2hpbGUgaW5zdGFsbGlu
ZyBhIFZNQSBpbiB0aGUgbW1hcCgpIHN5c3RlbSBjYWxsCgpUaGUgYmFja2dyb3VuZCBoZXJlIGlz
IHRoYXQgRE1BLWJ1ZiBhbGxvd3MgZGV2aWNlIGRyaXZlcnMgdG8gZXhwb3J0IGJ1ZmZlciB3aGlj
aCBhcmUgdGhlbiBpbXBvcnRlZCBpbnRvIGFub3RoZXIgZGV2aWNlIGRyaXZlci4gVGhlIG1tYXAo
KSBoYW5kbGVyIG9mIHRoZSBpbXBvcnRpbmcgZGV2aWNlIGRyaXZlciB0aGVuIGZpbmQgdGhhdCB0
aGUgcGdvZmYgYmVsb25ncyB0byB0aGUgZXhwb3J0aW5nIGRldmljZSBhbmQgc28gcmVkaXJlY3Rz
IHRoZSBtbWFwKCkgY2FsbCB0aGVyZS4KCkluIG90aGVyIHdvcmRzIHVzZXIgc3BhY2UgY2FsbHMg
bW1hcCgpIG9uIG9uZSBmaWxlIGRlc2NyaXB0b3IsIGJ1dCBnZXQgYSBkaWZmZXJlbnQgb25lIG1h
cHBlZCBpbnRvIHlvdXIgdmlydHVhbCBhZGRyZXNzIHNwYWNlLgoKTXkgcXVlc3Rpb24gaXMgbm93
OiBJcyB0aGF0IGxlZ2FsIG9yIGNhbiB5b3UgdGhpbmsgb2Ygc29tZXRoaW5nIHdoaWNoIGJyZWFr
cyBoZXJlPwoKSWYgaXQncyBub3QgbGVnYWwgd2Ugc2hvdWxkIHByb2JhYmx5IGJsb2NrIGFueSBu
ZXcgdXNlcnMgb2YgdGhlIGRtYV9idWZfbW1hcCgpIGZ1bmN0aW9uIGFuZCBjb25zaWRlciB3aGF0
IHNob3VsZCBoYXBwZW4gd2l0aCB0aGUgdHdvIGV4aXN0aW5nIG9uZXMuCgpJZiB0aGF0IGlzIGxl
Z2FsIEkgd291bGQgbGlrZSB0byBkb2N1bWVudCB0aGlzIGJ5IGFkZGluZyBhIG5ldyB2bWFfc2V0
X2ZpbGUoKSBmdW5jdGlvbiB3aGljaCBkb2VzIHRoZSBuZWNlc3NhcnkgcmVmZXJlbmNlIGNvdW50
IGRhbmNlLgoKVGhhbmtzIGluIGFkdmFuY2UsCkNocmlzdGlhbi4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
