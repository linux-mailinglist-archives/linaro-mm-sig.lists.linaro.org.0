Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E973FD92C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Sep 2021 14:03:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 025766314A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Sep 2021 12:02:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DB39E63223; Wed,  1 Sep 2021 12:02:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1C6261017;
	Wed,  1 Sep 2021 12:02:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0BAB060FFF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Sep 2021 12:02:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 097E060A59; Wed,  1 Sep 2021 12:02:50 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id E770060A59
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Sep 2021 12:02:47 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id b6so4085482wrh.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Sep 2021 05:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kvjkshBsZL+MRjib8570PI/tuRb4iFlF0PaMehLZjJ4=;
 b=dzSvn4RHJttKFOSm64mEroR9IRoIt9UyaGH17DQXq7LbKzUI44YaM4wVrBG4fUM76S
 V9WFpFC6vjx5iF4Wn21HwjhrbT1YgPr8EpBw4TZWvNmD+4E65GjR1IQ6pJtLYclnt80u
 Qr1ebxChCighqupPu5X32f6XSuKwrZ84IpgHwh41vcvkxRPwViQnwF5ufaIY6wnGqqg8
 5IKo6JQ4AZoyhczqpjlPRRmDGNX16SNKabaInV4ozPj+wRuLtLukddB8mUQXLjWQBGkf
 jeDuQn4hp6dmCOmxeg7w7q0VkXXQElXCDwVu2cv1tGIGafl7bsGxK33y5esn5gQBkORC
 A/rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kvjkshBsZL+MRjib8570PI/tuRb4iFlF0PaMehLZjJ4=;
 b=LEDETQOlAleZw8m6dghBNWv/SzSj/JZQkko41EL549wuTs/GNknakkwdJtaT7ttb6D
 cdT2EJ13D3YKYcIKDJjiUS0U9EkVnP0MbYRsEmInANCSo3F5+fEr8uofYHK6ncky+txS
 CUuXSl3qP+lo+/dev3IYXYCXwGSUUnSN+Vhx9r8r++LZgF7m/skucgfH5SvfPZJdIVR9
 Ztqc7uimELu4xbDpuhj4gENxKepm8GtYG28egdW1pF4osZlmFukVHibxVwKIAE10qkxa
 ucAqhz8zmRs3/jzoDjMx4lvSRVOjF/rxufreEhVSt8+7Eh/yaNBSTDrpmAlljaQO5ICy
 NfoQ==
X-Gm-Message-State: AOAM530Sn2YCBSRuelV9RzdwsjzdruYGuUVVWzv5frruYWjeyr4i4Y49
 w/6mQKOx49+8SC3ASUcPZwo=
X-Google-Smtp-Source: ABdhPJxLTeJ8VsgxsRlNO8XS7iVSjRXV9946sSFr+9mkf0DaEKe11SupLqOFNweo1Y+23uPd10G1Vg==
X-Received: by 2002:adf:9151:: with SMTP id j75mr37560030wrj.68.1630497767071; 
 Wed, 01 Sep 2021 05:02:47 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l7sm5641336wmj.9.2021.09.01.05.02.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Sep 2021 05:02:46 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  1 Sep 2021 14:02:39 +0200
Message-Id: <20210901120240.7339-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210901120240.7339-1-christian.koenig@amd.com>
References: <20210901120240.7339-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-buf: clarify dma_fence_ops->wait
 documentation
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
Cc: linaro-mm-sig@lists.linaro.org, daniel@ffwll.ch,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBjYWxsYmFjayBpcyBwcmV0dHkgbXVjaCBkZXByZWNhdGVkIGFuZCBzaG91bGQgbm90IGJl
IHVzZWQgYnkgbmV3IGltcGxlbWVudGF0aW9ucy4KCkNsYXJpZnkgdGhhdCBpbiB0aGUgZG9jdW1l
bnRhdGlvbiBhcyB3ZWxsLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggfCAxMCAr
KystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oCmluZGV4IDZmZmI0YjJjNjM3MS4uYTQ0ZTQyYjg2YzJhIDEwMDY0NAotLS0g
YS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNl
LmgKQEAgLTIxNCwxOSArMjE0LDE1IEBAIHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHsKIAkgKiBDdXN0
b20gd2FpdCBpbXBsZW1lbnRhdGlvbiwgZGVmYXVsdHMgdG8gZG1hX2ZlbmNlX2RlZmF1bHRfd2Fp
dCgpIGlmCiAJICogbm90IHNldC4KIAkgKgotCSAqIFRoZSBkbWFfZmVuY2VfZGVmYXVsdF93YWl0
IGltcGxlbWVudGF0aW9uIHNob3VsZCB3b3JrIGZvciBhbnkgZmVuY2UsIGFzIGxvbmcKLQkgKiBh
cyBAZW5hYmxlX3NpZ25hbGluZyB3b3JrcyBjb3JyZWN0bHkuIFRoaXMgaG9vayBhbGxvd3MgZHJp
dmVycyB0bwotCSAqIGhhdmUgYW4gb3B0aW1pemVkIHZlcnNpb24gZm9yIHRoZSBjYXNlIHdoZXJl
IGEgcHJvY2VzcyBjb250ZXh0IGlzCi0JICogYWxyZWFkeSBhdmFpbGFibGUsIGUuZy4gaWYgQGVu
YWJsZV9zaWduYWxpbmcgZm9yIHRoZSBnZW5lcmFsIGNhc2UKLQkgKiBuZWVkcyB0byBzZXQgdXAg
YSB3b3JrZXIgdGhyZWFkLgorCSAqIERlcHJlY2F0ZWQgYW5kIHNob3VsZCBub3QgYmUgdXNlZCBi
eSBuZXcgaW1wbGVtZW50YXRpb25zLiBPbmx5IHVzZWQKKwkgKiBieSBleGlzdGluZyBpbXBsZW1l
bnRhdGlvbnMgd2hpY2ggbmVlZCBzcGVjaWFsIGhhbmRsaW5nIGZvciB0aGVpcgorCSAqIGhhcmR3
YXJlIHJlc2V0IHByb2NlZHVyZS4KIAkgKgogCSAqIE11c3QgcmV0dXJuIC1FUkVTVEFSVFNZUyBp
ZiB0aGUgd2FpdCBpcyBpbnRyID0gdHJ1ZSBhbmQgdGhlIHdhaXQgd2FzCiAJICogaW50ZXJydXB0
ZWQsIGFuZCByZW1haW5pbmcgamlmZmllcyBpZiBmZW5jZSBoYXMgc2lnbmFsZWQsIG9yIDAgaWYg
d2FpdAogCSAqIHRpbWVkIG91dC4gQ2FuIGFsc28gcmV0dXJuIG90aGVyIGVycm9yIHZhbHVlcyBv
biBjdXN0b20gaW1wbGVtZW50YXRpb25zLAogCSAqIHdoaWNoIHNob3VsZCBiZSB0cmVhdGVkIGFz
IGlmIHRoZSBmZW5jZSBpcyBzaWduYWxlZC4gRm9yIGV4YW1wbGUgYSBoYXJkd2FyZQogCSAqIGxv
Y2t1cCBjb3VsZCBiZSByZXBvcnRlZCBsaWtlIHRoYXQuCi0JICoKLQkgKiBUaGlzIGNhbGxiYWNr
IGlzIG9wdGlvbmFsLgogCSAqLwogCXNpZ25lZCBsb25nICgqd2FpdCkoc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2UsCiAJCQkgICAgYm9vbCBpbnRyLCBzaWduZWQgbG9uZyB0aW1lb3V0KTsKLS0gCjIu
MjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
