Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA6F820B1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 17:48:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B729060956
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 15:48:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A85B06099C; Mon,  5 Aug 2019 15:48:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C496A61655;
	Mon,  5 Aug 2019 15:46:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D98FB6079C
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 15:46:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CAC9A6099C; Mon,  5 Aug 2019 15:46:01 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 944B96079C
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 15:45:59 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id x4so31735124wrt.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 05 Aug 2019 08:45:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a4ZZo1KUS4v5eA927ZZztm7GQeLvgm0C/yGY+IBScNk=;
 b=mUbpF77geLOFyRE/urzfGuxzEfL4JefU5/kHuvh7D2ObDJQIjHbR8vj1bS+jTgju9s
 wIlUiSQU7fSJABR17UTQXypB7ymF6fppileEb2609N216UX9gYDrrVUOS6r7lUWs7S2j
 /w713isbWcj1g1pVzZ0rLDbkTWb0q6S5hA9ycY31BzG1KtHlfrBBkT/hlCFvhtUs90+l
 Uhm1fEk8HmqAtDt9JEHrLMFWnQGw2UnI8w4hBi6Ldv684dJe0O1rNzKI3kBDtKCKd5P9
 RitDKQqHYvn/puJyfsekrte8VnU7qijnr7l4Exegocbqfo+SNAViceX+ZIk7bLS7n7I4
 nCZg==
X-Gm-Message-State: APjAAAUGMHHutpFKLz1b1xHTdBVUCj4Dh55M9O6mdcOCK6UXKGysqZaK
 +63NT4GoEpUs6Tw62V3DWds=
X-Google-Smtp-Source: APXvYqyKtWz2oAW1/rv7hSkrkd2h3z7inIhLfCt8NJpgwvZgCZQvI+8ki0rdQlhG46LV+7qztvPF4w==
X-Received: by 2002:a5d:6389:: with SMTP id p9mr1126311wru.297.1565019958875; 
 Mon, 05 Aug 2019 08:45:58 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:fdbd:6233:4990:5a8d])
 by smtp.gmail.com with ESMTPSA id 91sm171836865wrp.3.2019.08.05.08.45.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 08:45:58 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 chris@chris-wilson.co.uk
Date: Mon,  5 Aug 2019 17:45:53 +0200
Message-Id: <20190805154554.3476-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805154554.3476-1-christian.koenig@amd.com>
References: <20190805154554.3476-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 4/5] dma-buf: simplify
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
ZXNlcnZhdGlvbi5jIGIvZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMKaW5kZXggNmVhY2E0
NjkwMDVmLi42OWM4MjY1NTNjNzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZh
dGlvbi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jCkBAIC00MjYsMTMgKzQy
Niw2IEBAIGludCByZXNlcnZhdGlvbl9vYmplY3RfZ2V0X2ZlbmNlc19yY3Uoc3RydWN0IHJlc2Vy
dmF0aW9uX29iamVjdCAqb2JqLAogCQkJCWlmICghZG1hX2ZlbmNlX2dldF9yY3Uoc2hhcmVkW2ld
KSkKIAkJCQkJYnJlYWs7CiAJCQl9Ci0KLQkJCWlmICghcGZlbmNlX2V4Y2wgJiYgZmVuY2VfZXhj
bCkgewotCQkJCXNoYXJlZFtpXSA9IGZlbmNlX2V4Y2w7Ci0JCQkJZmVuY2VfZXhjbCA9IE5VTEw7
Ci0JCQkJKytpOwotCQkJCSsrc2hhcmVkX2NvdW50OwotCQkJfQogCQl9CiAKIAkJaWYgKGkgIT0g
c2hhcmVkX2NvdW50IHx8IHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBzZXEpKSB7CkBA
IC00NDcsNiArNDQwLDExIEBAIGludCByZXNlcnZhdGlvbl9vYmplY3RfZ2V0X2ZlbmNlc19yY3Uo
c3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqLAogCQlyY3VfcmVhZF91bmxvY2soKTsKIAl9
IHdoaWxlIChyZXQpOwogCisJaWYgKHBmZW5jZV9leGNsKQorCQkqcGZlbmNlX2V4Y2wgPSBmZW5j
ZV9leGNsOworCWVsc2UgaWYgKGZlbmNlX2V4Y2wpCisJCXNoYXJlZFsrK3NoYXJlZF9jb3VudF0g
PSBmZW5jZV9leGNsOworCiAJaWYgKCFzaGFyZWRfY291bnQpIHsKIAkJa2ZyZWUoc2hhcmVkKTsK
IAkJc2hhcmVkID0gTlVMTDsKQEAgLTQ1NCw5ICs0NTIsNiBAQCBpbnQgcmVzZXJ2YXRpb25fb2Jq
ZWN0X2dldF9mZW5jZXNfcmN1KHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKm9iaiwKIAogCSpw
c2hhcmVkX2NvdW50ID0gc2hhcmVkX2NvdW50OwogCSpwc2hhcmVkID0gc2hhcmVkOwotCWlmIChw
ZmVuY2VfZXhjbCkKLQkJKnBmZW5jZV9leGNsID0gZmVuY2VfZXhjbDsKLQogCXJldHVybiByZXQ7
CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChyZXNlcnZhdGlvbl9vYmplY3RfZ2V0X2ZlbmNlc19yY3Up
OwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
