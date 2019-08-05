Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B9C820AC
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 17:47:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0C6C6079C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 15:47:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B35006088B; Mon,  5 Aug 2019 15:47:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31C886099C;
	Mon,  5 Aug 2019 15:46:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B668960795
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 15:46:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A57966088B; Mon,  5 Aug 2019 15:46:00 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id CA8C660770
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 15:45:58 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id n9so85029008wru.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 05 Aug 2019 08:45:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v306sfwUGIVnriTquF2KCh9r0qG80xENrZcYr3yv41A=;
 b=TpV4pXh1/U1qmq9AhLUcnhncxU1H023FLpCjbFZfMuSmgZ2qU6LMN1rXoK+gKuKHRe
 tXRe02Kfwoi1tZlfVGcrpdkBnOC0fgq4n5DQu12t/bhE8ntXTErw1kwgAFi1mPDERUKc
 WbkpNGQNM4MhZLkvX2poNZ9bHyQxhxdgjMeRaQfWNwlVfHVAYf+uaK+pLsVH6Xfsh/wu
 g6CDbqfgkXjXf3Q1EirWqpx6Bkvim7+7c/STBqtUHUd5JD5Jb+QHrsqoeoWxT2Hk6W46
 DF2jzCjNF4D00o/mU8x9ImKQ3GwCEkVDwZr9a5fmIdrtY7O0TJkxWhkrZeB+vkqiCbjz
 bVBA==
X-Gm-Message-State: APjAAAX7CDnjFQbNQbJmYF93L+eZEDcxQLRIFtHMk2XMczt+HQSx6GLR
 K+j1Pg7F3+69uEFm1+xyG7s=
X-Google-Smtp-Source: APXvYqyiVh4JW9BAxeQmV7Ga2Y/xwkIkFOdeQDansqXZR5hzlhxtXw4izgVGV95M9bxc9zQCbGMijQ==
X-Received: by 2002:a5d:4090:: with SMTP id o16mr6149082wrp.292.1565019958047; 
 Mon, 05 Aug 2019 08:45:58 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:fdbd:6233:4990:5a8d])
 by smtp.gmail.com with ESMTPSA id 91sm171836865wrp.3.2019.08.05.08.45.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 08:45:57 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 chris@chris-wilson.co.uk
Date: Mon,  5 Aug 2019 17:45:52 +0200
Message-Id: <20190805154554.3476-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805154554.3476-1-christian.koenig@amd.com>
References: <20190805154554.3476-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 3/5] dma-buf: further relax
	reservation_object_add_shared_fence
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

T3RoZXIgY29yZXMgZG9uJ3QgYnVzeSB3YWl0IGFueSBtb3JlIGFuZCB3ZSByZW1vdmVkIHRoZSBs
YXN0IHVzZXIgb2YgY2hlY2tpbmcKdGhlIHNlcW5vIGZvciBjaGFuZ2VzLiBEcm9wIHVwZGF0aW5n
IHRoZSBudW1iZXIgZm9yIHNoYXJlZCBmZW5jZXMgYWx0b2dldGhlci4KClNpZ25lZC1vZmYtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJz
L2RtYS1idWYvcmVzZXJ2YXRpb24uYyB8IDYgLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvcmVzZXJ2YXRpb24uYyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jCmluZGV4IGQ1OTIwN2NhNzJkMi4uNmVhY2E0Njkw
MDVmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvcmVzZXJ2YXRpb24uYworKysgYi9kcml2
ZXJzL2RtYS1idWYvcmVzZXJ2YXRpb24uYwpAQCAtMjA2LDkgKzIwNiw2IEBAIHZvaWQgcmVzZXJ2
YXRpb25fb2JqZWN0X2FkZF9zaGFyZWRfZmVuY2Uoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAq
b2JqLAogCWZvYmogPSByZXNlcnZhdGlvbl9vYmplY3RfZ2V0X2xpc3Qob2JqKTsKIAljb3VudCA9
IGZvYmotPnNoYXJlZF9jb3VudDsKIAotCXByZWVtcHRfZGlzYWJsZSgpOwotCXdyaXRlX3NlcWNv
dW50X2JlZ2luKCZvYmotPnNlcSk7Ci0KIAlmb3IgKGkgPSAwOyBpIDwgY291bnQ7ICsraSkgewog
CiAJCW9sZCA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoZm9iai0+c2hhcmVkW2ldLApAQCAt
MjI2LDkgKzIyMyw2IEBAIHZvaWQgcmVzZXJ2YXRpb25fb2JqZWN0X2FkZF9zaGFyZWRfZmVuY2Uo
c3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqLAogCVJDVV9JTklUX1BPSU5URVIoZm9iai0+
c2hhcmVkW2ldLCBmZW5jZSk7CiAJLyogcG9pbnRlciB1cGRhdGUgbXVzdCBiZSB2aXNpYmxlIGJl
Zm9yZSB3ZSBleHRlbmQgdGhlIHNoYXJlZF9jb3VudCAqLwogCXNtcF9zdG9yZV9tYihmb2JqLT5z
aGFyZWRfY291bnQsIGNvdW50KTsKLQotCXdyaXRlX3NlcWNvdW50X2VuZCgmb2JqLT5zZXEpOwot
CXByZWVtcHRfZW5hYmxlKCk7CiAJZG1hX2ZlbmNlX3B1dChvbGQpOwogfQogRVhQT1JUX1NZTUJP
TChyZXNlcnZhdGlvbl9vYmplY3RfYWRkX3NoYXJlZF9mZW5jZSk7Ci0tIAoyLjE3LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
