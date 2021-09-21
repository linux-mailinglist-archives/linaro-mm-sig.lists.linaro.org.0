Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D36741389B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:37:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A399611F7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:37:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6263B611B2; Tue, 21 Sep 2021 17:37:37 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE07D631A2;
	Tue, 21 Sep 2021 17:37:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B68E1617D8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 72160619B0; Tue, 21 Sep 2021 17:37:11 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 1341C612A3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:08 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id w29so41596734wra.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mLSizZ4M7ck2vZK70ODv7YgGo+NNZv9b+MC6JZjgVHI=;
 b=WIeU5gPMVQAYFFZSGNknvCAMsvT8UjjP9BfyIVm63GEiswovgVy4AzVOqolBxhEWp/
 AT8fKzC7Yj38e0aOTRAgxRXU1uSCPf0/fTY7tSDEvPorkthPyosgeZQlpDgYiixh4Dde
 FS7rYYnU4Gy0WeWLsj5aydYYIRWKRWUfxnf1tLd+ni9i9TkcZ5rpQOYA8mjFEhcCavSC
 dee0c9H8Yg8nxmgD2slgXSWGPcjiIMIiN9ol5Rthc24K+Q0EIZSOnrECPByvRKPJVkIa
 dXOTWkGTLqLlMPMvyY/2jqNJM1AdaYiRTwvjRKlhdDP6Ct/xM1oQgWKCnLrAiBrSJNBy
 YC5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mLSizZ4M7ck2vZK70ODv7YgGo+NNZv9b+MC6JZjgVHI=;
 b=iOwm0F05cHPpq8ParAZRniJacdq4aaAy6iFwFORjgMJ3MH+mxxicX4Oma3vFwBlIIp
 FggwcNFYWRfjWdfZf6KvW9gS23PmyBpK+ciCObhJllIxo1lINLKyygKh5TyCTG/V5wP9
 LoYIZPeumV9ZCKRXaM7/r43Scejy6iVrOH1eZPUw8o3CfdWXX2HL0lWj0TrIXAzn/hzG
 4pq3by/zE8TmkVXmwlUh77v9FxAeJrQo1FjA+zC/8YHxL5r+JmpQgS69mHog8nzcoKX3
 R6uhKNdS2fRYqSae0FWi9cOZMxppGlXrr+wQOG3oWLycSg4UjUO5VvzGN9sKKMdCmue6
 j9/g==
X-Gm-Message-State: AOAM5326ll3oS55Y5W6FfCjFW1UhzplQqDWMoVdz/o5Vf0oZws52Amjv
 5xee03BSQe+FzZQ84pI1CZo=
X-Google-Smtp-Source: ABdhPJzXt6M3ehIM5bW3VMY6F1g9umw9RyMB9K/yfY7tZ5c55BsQ+KirqM0HvVLRgEuCeDgwtA+pNw==
X-Received: by 2002:adf:eb83:: with SMTP id t3mr35646827wrn.365.1632245827210; 
 Tue, 21 Sep 2021 10:37:07 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:06 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:39 +0200
Message-Id: <20210921173659.246165-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 06/26] dma-buf: use new iterator in
 dma_resv_test_signaled
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMgfCA1NyArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YwppbmRleCA4MzMxZTZlNGY5ZmIuLmMxYTk1OGI5MjkxMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTYz
MCwyMiArNjMwLDYgQEAgbG9uZyBkbWFfcmVzdl93YWl0X3RpbWVvdXQoc3RydWN0IGRtYV9yZXN2
ICpvYmosIGJvb2wgd2FpdF9hbGwsIGJvb2wgaW50ciwKIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9y
ZXN2X3dhaXRfdGltZW91dCk7CiAKIAotc3RhdGljIGlubGluZSBpbnQgZG1hX3Jlc3ZfdGVzdF9z
aWduYWxlZF9zaW5nbGUoc3RydWN0IGRtYV9mZW5jZSAqcGFzc2VkX2ZlbmNlKQotewotCXN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlLCAqbGZlbmNlID0gcGFzc2VkX2ZlbmNlOwotCWludCByZXQgPSAx
OwotCi0JaWYgKCF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZsZmVuY2Ut
PmZsYWdzKSkgewotCQlmZW5jZSA9IGRtYV9mZW5jZV9nZXRfcmN1KGxmZW5jZSk7Ci0JCWlmICgh
ZmVuY2UpCi0JCQlyZXR1cm4gLTE7Ci0KLQkJcmV0ID0gISFkbWFfZmVuY2VfaXNfc2lnbmFsZWQo
ZmVuY2UpOwotCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQl9Ci0JcmV0dXJuIHJldDsKLX0KLQog
LyoqCiAgKiBkbWFfcmVzdl90ZXN0X3NpZ25hbGVkIC0gVGVzdCBpZiBhIHJlc2VydmF0aW9uIG9i
amVjdCdzIGZlbmNlcyBoYXZlIGJlZW4KICAqIHNpZ25hbGVkLgpAQCAtNjYyLDQzICs2NDYsMTYg
QEAgc3RhdGljIGlubGluZSBpbnQgZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9zaW5nbGUoc3RydWN0
IGRtYV9mZW5jZSAqcGFzc2VkX2ZlbmNlKQogICovCiBib29sIGRtYV9yZXN2X3Rlc3Rfc2lnbmFs
ZWQoc3RydWN0IGRtYV9yZXN2ICpvYmosIGJvb2wgdGVzdF9hbGwpCiB7CisJc3RydWN0IGRtYV9y
ZXN2X2l0ZXIgY3Vyc29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwotCXVuc2lnbmVkIGlu
dCBzZXE7Ci0JaW50IHJldDsKLQotCXJjdV9yZWFkX2xvY2soKTsKLXJldHJ5OgotCXJldCA9IHRy
dWU7Ci0Jc2VxID0gcmVhZF9zZXFjb3VudF9iZWdpbigmb2JqLT5zZXEpOwotCi0JaWYgKHRlc3Rf
YWxsKSB7Ci0JCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmb2JqID0gZG1hX3Jlc3Zfc2hhcmVkX2xp
c3Qob2JqKTsKLQkJdW5zaWduZWQgaW50IGksIHNoYXJlZF9jb3VudDsKLQotCQlzaGFyZWRfY291
bnQgPSBmb2JqID8gZm9iai0+c2hhcmVkX2NvdW50IDogMDsKLQkJZm9yIChpID0gMDsgaSA8IHNo
YXJlZF9jb3VudDsgKytpKSB7Ci0JCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZShmb2JqLT5zaGFy
ZWRbaV0pOwotCQkJcmV0ID0gZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9zaW5nbGUoZmVuY2UpOwot
CQkJaWYgKHJldCA8IDApCi0JCQkJZ290byByZXRyeTsKLQkJCWVsc2UgaWYgKCFyZXQpCi0JCQkJ
YnJlYWs7Ci0JCX0KLQl9Ci0KLQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2Uob2JqKTsKLQlp
ZiAocmV0ICYmIGZlbmNlKSB7Ci0JCXJldCA9IGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWRfc2luZ2xl
KGZlbmNlKTsKLQkJaWYgKHJldCA8IDApCi0JCQlnb3RvIHJldHJ5OwogCisJZG1hX3Jlc3ZfaXRl
cl9iZWdpbigmY3Vyc29yLCBvYmosIHRlc3RfYWxsKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5j
ZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgeworCQlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29y
KTsKKwkJcmV0dXJuIGZhbHNlOwogCX0KLQotCWlmIChyZWFkX3NlcWNvdW50X3JldHJ5KCZvYmot
PnNlcSwgc2VxKSkKLQkJZ290byByZXRyeTsKLQotCXJjdV9yZWFkX3VubG9jaygpOwotCXJldHVy
biByZXQ7CisJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CisJcmV0dXJuIHRydWU7CiB9CiBF
WFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl90ZXN0X3NpZ25hbGVkKTsKIAotLSAKMi4yNS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
