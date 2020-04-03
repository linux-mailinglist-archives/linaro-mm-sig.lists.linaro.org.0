Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E581B6D34
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:32:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31099619CF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:32:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 23EA6619EA; Fri, 24 Apr 2020 05:32:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68283619F3;
	Fri, 24 Apr 2020 05:29:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4854F6038D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Apr 2020 04:25:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 30A2360593; Fri,  3 Apr 2020 04:25:13 +0000 (UTC)
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by lists.linaro.org (Postfix) with ESMTPS id 3A11E6038D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Apr 2020 04:25:12 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id g9so2413774pjp.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Apr 2020 21:25:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AyD2kX0rtGFxJhOxxjgdsGTPUrD/FjXjSvw4eMWluYU=;
 b=S3bxgAgmOKpotgMIciIsUVtdBhIqad6YE5tDMtqjDJ3+SfiSt+8sBbW35XlQ4WzZzI
 3828P98DxIBB7RFr4n3Xedn1N3WmlR6h9AzHs/F9iqaYMekNf87i8i4wjzBeFhGfhHi/
 DvOUQNN8a7bbZ2fO36KhrL15iJUXjrtvJEuppoV41H05ja4De1/DdLWV5FsZuA9wguCK
 Rx+jQz0M4yIpU0owrsEMpPcZOOYc+a8FwV189qCnX+zSCl/SC/aTg6ZkuAOhhEetkjbu
 Afoa2NbvXuM5lIAnB7EOjcs+R00HnmgHDlE/5HTWFoTsRDshqrV09TwDm2blbg7yNKrp
 yezw==
X-Gm-Message-State: AGi0PubXkXj2iUUeFwVq7Mdb1N5A2VahOnZQyweZHwY4qCQ1ynnDYfjU
 n7wXawNNSK5sEZJucqnPipw=
X-Google-Smtp-Source: APiQypLUFoTcgC53/RD9U2GcTptF5bIO1QeLIw/HD5iIXFZnYExMi6C3tKHE3v7Uavp2U/mKA1dw5Q==
X-Received: by 2002:a17:902:82c5:: with SMTP id
 u5mr6320102plz.254.1585887911382; 
 Thu, 02 Apr 2020 21:25:11 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id l190sm4760286pfl.212.2020.04.02.21.25.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 21:25:10 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Laura Abbott <labbott@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, devel@driverdev.osuosl.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
Date: Thu,  2 Apr 2020 21:24:48 -0700
Message-Id: <20200403042448.863689-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [Linaro-mm-sig] [PATCH v2] staging: android: ion: Align with
	parenthesis
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

QWxpZ24gdHdvIGRpZmZlcmVudCBsaW5lcyBvZiBhcmd1bWVudHMgd2l0aCB0aGUgcGFyZW50aGVz
aXMKb2YgdGhlaXIgcmVzcGVjdGVkIGZ1bmN0aW9uIGRlZmluaXRpb25zLiBGaXggc3R5bGUgd2Fy
bmluZ3MKb2YgbWF0Y2hpbmcgYWxpZ25tZW50LgoKUmVwb3J0ZWQgYnkgY2hlY2twYXRjaC4KClNp
Z25lZC1vZmYtYnk6IEpvaG4gQi4gV3lhdHQgSVYgPGpid3lhdHQ0QGdtYWlsLmNvbT4KLS0tCnYy
OiBDaGFuZ2UgY29tbWVudCB0aXRsZSBhbmQgc3VtbWFyeQogICAgU3VnZ2VzdGVkLWJ5OiBKdWxp
YSBMYXdhbGwgPGp1bGlhLmxhd2FsbEBpbnJpYS5mcj4KCiBkcml2ZXJzL3N0YWdpbmcvYW5kcm9p
ZC9pb24vaW9uX3BhZ2VfcG9vbC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRy
b2lkL2lvbi9pb25fcGFnZV9wb29sLmMgYi9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9u
X3BhZ2VfcG9vbC5jCmluZGV4IGY4NWVjNWIxNmI2NS4uMDE5OGI4ODZkOTA2IDEwMDY0NAotLS0g
YS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX3BhZ2VfcG9vbC5jCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25fcGFnZV9wb29sLmMKQEAgLTM3LDcgKzM3LDcgQEAg
c3RhdGljIHZvaWQgaW9uX3BhZ2VfcG9vbF9hZGQoc3RydWN0IGlvbl9wYWdlX3Bvb2wgKnBvb2ws
IHN0cnVjdCBwYWdlICpwYWdlKQogCX0KIAogCW1vZF9ub2RlX3BhZ2Vfc3RhdGUocGFnZV9wZ2Rh
dChwYWdlKSwgTlJfS0VSTkVMX01JU0NfUkVDTEFJTUFCTEUsCi0JCQkJCQkJMSA8PCBwb29sLT5v
cmRlcik7CisJCQkgICAgMSA8PCBwb29sLT5vcmRlcik7CiAJbXV0ZXhfdW5sb2NrKCZwb29sLT5t
dXRleCk7CiB9CiAKQEAgLTU3LDcgKzU3LDcgQEAgc3RhdGljIHN0cnVjdCBwYWdlICppb25fcGFn
ZV9wb29sX3JlbW92ZShzdHJ1Y3QgaW9uX3BhZ2VfcG9vbCAqcG9vbCwgYm9vbCBoaWdoKQogCiAJ
bGlzdF9kZWwoJnBhZ2UtPmxydSk7CiAJbW9kX25vZGVfcGFnZV9zdGF0ZShwYWdlX3BnZGF0KHBh
Z2UpLCBOUl9LRVJORUxfTUlTQ19SRUNMQUlNQUJMRSwKLQkJCQkJCQktKDEgPDwgcG9vbC0+b3Jk
ZXIpKTsKKwkJCSAgICAtKDEgPDwgcG9vbC0+b3JkZXIpKTsKIAlyZXR1cm4gcGFnZTsKIH0KIAot
LSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
