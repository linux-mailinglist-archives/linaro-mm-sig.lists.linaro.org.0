Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAFE820A5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 17:46:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3955B616F6
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 15:46:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2AC066176E; Mon,  5 Aug 2019 15:46:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4043460795;
	Mon,  5 Aug 2019 15:46:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 486E960770
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 15:45:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 377D36088B; Mon,  5 Aug 2019 15:45:58 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 247AA60770
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 15:45:57 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id p17so84895712wrf.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 05 Aug 2019 08:45:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r9iyE3YOKUeG5ZizxulW4D4UK5rsERFOEpq/DiuLZko=;
 b=mxqzVNzmxjPjnM/0x6x7+9h1vYdaU/Vyb9vPPsYgWoopnwl4jK8Qj4BAWfEtC/Y+xh
 Nu7Dr5iW9hqEecCnXM1N3Z/FSUckEat2i2V2mBmXIDrYMtSZjz1CEaRc4YhHRqOQs/KY
 7bqSnHe1mTlYSGnCKMuFub37A9rkWQG4mS+1hrfXlSGaC8tv6x6Y6OttOH4juyZKbwbb
 zUoLxFv3nBirq+/nTaqX76P0ubdWpK9eSNc8VjAgAouc008TSI1HMvnE5QdKxJY6bu2/
 UCm+hKrBE23ZpSLC40jFKi1Cyum72+7Wx1IexIwasTarZoAaqHbSiSqaCAEPUFKg9sw0
 DZHA==
X-Gm-Message-State: APjAAAXQMzFNo3Ht/KJDuq1BQscOalAbdmB/rejBxn6eTH2f4/Wy4QvG
 9XlO07dehD6uFGKqIvionG4=
X-Google-Smtp-Source: APXvYqwCfN2jELpOVXfZqazfG5tJI+AkZ8uPPiqhfPSXd+Hfql7qg3WBGsEluL6UnV4wSsPytaVFDA==
X-Received: by 2002:a05:6000:14b:: with SMTP id
 r11mr11212622wrx.196.1565019956350; 
 Mon, 05 Aug 2019 08:45:56 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:fdbd:6233:4990:5a8d])
 by smtp.gmail.com with ESMTPSA id 91sm171836865wrp.3.2019.08.05.08.45.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 08:45:55 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 chris@chris-wilson.co.uk
Date: Mon,  5 Aug 2019 17:45:50 +0200
Message-Id: <20190805154554.3476-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 1/5] drm/i915: stop pruning reservation
	object after wait
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

VGhlIHJlc2VydmF0aW9uIG9iamVjdCBzaG91bGQgYmUgY2FwYWJsZSBvZiBoYW5kbGluZyBpdHMg
aW50ZXJuYWwgbWVtb3J5Cm1hbmFnZW1lbnQgaXRzZWxmLiBBbmQgc2luY2Ugd2Ugc2VhcmNoIGZv
ciBhIGZyZWUgc2xvdCB0byBhZGQgdGhlIGZlbmNlCmZyb20gdGhlIGJlZ2lubmluZyB0aGlzIGlz
IGFjdHVhbGx5IGEgd2FzdGUgb2YgdGltZSBhbmQgb25seSBtaW5pbWFsIGhlbHBmdWwuCgpEcm9w
IGl0IHRvIGFsbG93IHJlbW92YWwgb2YgdGhlIHNlcW5vIGhhbmRsaW5nIGluIHRoZSByZXNlcnZh
dGlvbiBvYmplY3QuCgpUaGlzIGVzc2VudGlhbGx5IHJldmVydHMgY29tbWl0ICJkcm0vaTkxNTog
UmVtb3ZlIGNvbXBsZXRlZCBmZW5jZXMgYWZ0ZXIgYSB3YWl0Ii4KClNpZ25lZC1vZmYtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jIHwgMjcgLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMjcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV93YWl0LmMKaW5kZXggMjZlYzY1NzliN2NkLi5iYjY0ZWM2YmVmOGUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwpAQCAtMzUsOSArMzUsNyBA
QCBpOTE1X2dlbV9vYmplY3Rfd2FpdF9yZXNlcnZhdGlvbihzdHJ1Y3QgcmVzZXJ2YXRpb25fb2Jq
ZWN0ICpyZXN2LAogCQkJCSB1bnNpZ25lZCBpbnQgZmxhZ3MsCiAJCQkJIGxvbmcgdGltZW91dCkK
IHsKLQl1bnNpZ25lZCBpbnQgc2VxID0gX19yZWFkX3NlcWNvdW50X2JlZ2luKCZyZXN2LT5zZXEp
OwogCXN0cnVjdCBkbWFfZmVuY2UgKmV4Y2w7Ci0JYm9vbCBwcnVuZV9mZW5jZXMgPSBmYWxzZTsK
IAogCWlmIChmbGFncyAmIEk5MTVfV0FJVF9BTEwpIHsKIAkJc3RydWN0IGRtYV9mZW5jZSAqKnNo
YXJlZDsKQEAgLTYxLDE3ICs1OSw2IEBAIGk5MTVfZ2VtX29iamVjdF93YWl0X3Jlc2VydmF0aW9u
KHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKnJlc3YsCiAJCWZvciAoOyBpIDwgY291bnQ7IGkr
KykKIAkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKIAkJa2ZyZWUoc2hhcmVkKTsKLQotCQkv
KgotCQkgKiBJZiBib3RoIHNoYXJlZCBmZW5jZXMgYW5kIGFuIGV4Y2x1c2l2ZSBmZW5jZSBleGlz
dCwKLQkJICogdGhlbiBieSBjb25zdHJ1Y3Rpb24gdGhlIHNoYXJlZCBmZW5jZXMgbXVzdCBiZSBs
YXRlcgotCQkgKiB0aGFuIHRoZSBleGNsdXNpdmUgZmVuY2UuIElmIHdlIHN1Y2Nlc3NmdWxseSB3
YWl0IGZvcgotCQkgKiBhbGwgdGhlIHNoYXJlZCBmZW5jZXMsIHdlIGtub3cgdGhhdCB0aGUgZXhj
bHVzaXZlIGZlbmNlCi0JCSAqIG11c3QgYWxsIGJlIHNpZ25hbGVkLiBJZiBhbGwgdGhlIHNoYXJl
ZCBmZW5jZXMgYXJlCi0JCSAqIHNpZ25hbGVkLCB3ZSBjYW4gcHJ1bmUgdGhlIGFycmF5IGFuZCBy
ZWNvdmVyIHRoZQotCQkgKiBmbG9hdGluZyByZWZlcmVuY2VzIG9uIHRoZSBmZW5jZXMvcmVxdWVz
dHMuCi0JCSAqLwotCQlwcnVuZV9mZW5jZXMgPSBjb3VudCAmJiB0aW1lb3V0ID49IDA7CiAJfSBl
bHNlIHsKIAkJZXhjbCA9IHJlc2VydmF0aW9uX29iamVjdF9nZXRfZXhjbF9yY3UocmVzdik7CiAJ
fQpAQCAtODAsMjAgKzY3LDYgQEAgaTkxNV9nZW1fb2JqZWN0X3dhaXRfcmVzZXJ2YXRpb24oc3Ry
dWN0IHJlc2VydmF0aW9uX29iamVjdCAqcmVzdiwKIAkJdGltZW91dCA9IGk5MTVfZ2VtX29iamVj
dF93YWl0X2ZlbmNlKGV4Y2wsIGZsYWdzLCB0aW1lb3V0KTsKIAogCWRtYV9mZW5jZV9wdXQoZXhj
bCk7Ci0KLQkvKgotCSAqIE9wcG9ydHVuaXN0aWNhbGx5IHBydW5lIHRoZSBmZW5jZXMgaWZmIHdl
IGtub3cgdGhleSBoYXZlICphbGwqIGJlZW4KLQkgKiBzaWduYWxlZCBhbmQgdGhhdCB0aGUgcmVz
ZXJ2YXRpb24gb2JqZWN0IGhhcyBub3QgYmVlbiBjaGFuZ2VkIChpLmUuCi0JICogbm8gbmV3IGZl
bmNlcyBoYXZlIGJlZW4gYWRkZWQpLgotCSAqLwotCWlmIChwcnVuZV9mZW5jZXMgJiYgIV9fcmVh
ZF9zZXFjb3VudF9yZXRyeSgmcmVzdi0+c2VxLCBzZXEpKSB7Ci0JCWlmIChyZXNlcnZhdGlvbl9v
YmplY3RfdHJ5bG9jayhyZXN2KSkgewotCQkJaWYgKCFfX3JlYWRfc2VxY291bnRfcmV0cnkoJnJl
c3YtPnNlcSwgc2VxKSkKLQkJCQlyZXNlcnZhdGlvbl9vYmplY3RfYWRkX2V4Y2xfZmVuY2UocmVz
diwgTlVMTCk7Ci0JCQlyZXNlcnZhdGlvbl9vYmplY3RfdW5sb2NrKHJlc3YpOwotCQl9Ci0JfQot
CiAJcmV0dXJuIHRpbWVvdXQ7CiB9CiAKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
