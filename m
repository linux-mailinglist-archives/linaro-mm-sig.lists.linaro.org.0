Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 988B6834AC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 17:04:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC4A76097D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 15:04:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AD79060C21; Tue,  6 Aug 2019 15:04:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AC436177C;
	Tue,  6 Aug 2019 15:02:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 936A16176E
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 15:02:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 82DD6617B0; Tue,  6 Aug 2019 15:02:17 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 9C0F161778
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 15:01:41 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id v15so78568157wml.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Aug 2019 08:01:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kQ9oFDS/I3lsIGSETmAE0qxXzfKIwv2YeSX45z+1rwU=;
 b=uGuGlUXZW05qCZLhwvgqeNkkCHWN26aLMt+5zY/cDT+8+rsKjllquDLe6dnwJTMY+s
 iOS4NZUcbzrmen11cmC6nUSPkKq2ehb+D3TcWd7ddUeKZ5WRo4zm3pRtsASehVuQEhBF
 YRK1xK45V4A9xp2GqhahAh7VZ5+dd2outiSQmrGLpV+k7aUja5Nc3LoqtQujq3ZhOhvd
 +soKK8gFF7Z7N9k8JyEgOBnaxjTP4gt5imTbIaD0igXhB1ceCUaUcEvOwZV0IU03u+0w
 BsonpF8DqS2B/ofOFPBXnHUVAVy6+vbJiLkpUvNCQwcM6IN7MxZ6hZr6iCjjGda2pEMr
 mPrQ==
X-Gm-Message-State: APjAAAXLyuiJDWfYkM004CPRTFrVwrh2sP4mhitIOSX4MoYr1tSxGifP
 JM07f3gHhbrj2TEqeJeNP2I=
X-Google-Smtp-Source: APXvYqwFCBO5hyfet3W1WHFKzyIH4Ndd/neVuTx3uu0wvJrvR5qA7G120GL5TnfpgpjOWpp47xu6aA==
X-Received: by 2002:a1c:7fc3:: with SMTP id a186mr5558656wmd.151.1565103700841; 
 Tue, 06 Aug 2019 08:01:40 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:d1e0:fffc:b0e3:c66d])
 by smtp.gmail.com with ESMTPSA id g2sm78766828wmh.0.2019.08.06.08.01.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 08:01:40 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk
Date: Tue,  6 Aug 2019 17:01:32 +0200
Message-Id: <20190806150134.104222-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806150134.104222-1-christian.koenig@amd.com>
References: <20190806150134.104222-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 6/8] dma-buf: simplify
	reservation_object_get_fences_rcu a bit
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

V2UgY2FuIGFkZCB0aGUgZXhjbHVzaXZlIGZlbmNlIHRvIHRoZSBsaXN0IGFmdGVyIG1ha2luZyBz
dXJlIHdlIGdvdAphIGNvbnNpc3RlbnQgc3RhdGUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL3Jl
c2VydmF0aW9uLmMgfCAxNSArKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9y
ZXNlcnZhdGlvbi5jIGIvZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMKaW5kZXggOTQ0ZDk2
MmRkZGRmLi43NTA1ZWIyODkwMjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZh
dGlvbi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jCkBAIC00NTMsMTMgKzQ1
Myw2IEBAIGludCByZXNlcnZhdGlvbl9vYmplY3RfZ2V0X2ZlbmNlc19yY3Uoc3RydWN0IHJlc2Vy
dmF0aW9uX29iamVjdCAqb2JqLAogCQkJCWlmICghZG1hX2ZlbmNlX2dldF9yY3Uoc2hhcmVkW2ld
KSkKIAkJCQkJYnJlYWs7CiAJCQl9Ci0KLQkJCWlmICghcGZlbmNlX2V4Y2wgJiYgZmVuY2VfZXhj
bCkgewotCQkJCXNoYXJlZFtpXSA9IGZlbmNlX2V4Y2w7Ci0JCQkJZmVuY2VfZXhjbCA9IE5VTEw7
Ci0JCQkJKytpOwotCQkJCSsrc2hhcmVkX2NvdW50OwotCQkJfQogCQl9CiAKIAkJaWYgKGkgIT0g
c2hhcmVkX2NvdW50IHx8IHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBzZXEpKSB7CkBA
IC00NzQsNiArNDY3LDExIEBAIGludCByZXNlcnZhdGlvbl9vYmplY3RfZ2V0X2ZlbmNlc19yY3Uo
c3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqLAogCQlyY3VfcmVhZF91bmxvY2soKTsKIAl9
IHdoaWxlIChyZXQpOwogCisJaWYgKHBmZW5jZV9leGNsKQorCQkqcGZlbmNlX2V4Y2wgPSBmZW5j
ZV9leGNsOworCWVsc2UgaWYgKGZlbmNlX2V4Y2wpCisJCXNoYXJlZFsrK3NoYXJlZF9jb3VudF0g
PSBmZW5jZV9leGNsOworCiAJaWYgKCFzaGFyZWRfY291bnQpIHsKIAkJa2ZyZWUoc2hhcmVkKTsK
IAkJc2hhcmVkID0gTlVMTDsKQEAgLTQ4MSw5ICs0NzksNiBAQCBpbnQgcmVzZXJ2YXRpb25fb2Jq
ZWN0X2dldF9mZW5jZXNfcmN1KHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKm9iaiwKIAogCSpw
c2hhcmVkX2NvdW50ID0gc2hhcmVkX2NvdW50OwogCSpwc2hhcmVkID0gc2hhcmVkOwotCWlmIChw
ZmVuY2VfZXhjbCkKLQkJKnBmZW5jZV9leGNsID0gZmVuY2VfZXhjbDsKLQogCXJldHVybiByZXQ7
CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChyZXNlcnZhdGlvbl9vYmplY3RfZ2V0X2ZlbmNlc19yY3Up
OwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
