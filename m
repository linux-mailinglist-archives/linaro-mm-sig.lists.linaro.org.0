Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3926340D8D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1537F69CF3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 954E369CFE; Thu, 16 Sep 2021 11:31:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3128863249;
	Thu, 16 Sep 2021 11:31:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CE6E7677FF
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6264A69CE8; Thu, 16 Sep 2021 11:31:07 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by lists.linaro.org (Postfix) with ESMTPS id 54BE9667F7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:04 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 z184-20020a1c7ec1000000b003065f0bc631so7148996wmc.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S9Hd2E/Qpw61lQsH4cIVU2nxOsEUFiGZ/6cSSR0b+MQ=;
 b=UNyJUqywH99MZUewMqfuHAyRR9k0ZDG2hlA54YvbD1BFn7IuWO7Hk/VawAuA8tgOK8
 RaDxZ1olqGN2esx0aeHkP38wv+cVnzrsaycL7aZ86g7aRhsRxG/CyQa9netS/JwZ0Nbe
 fZ17s0rdh91VWhhUarazp43XFF6svifzFvdZ2KyLfKV55nNd4K+fMr0fU0FaSPBYixJo
 SZ4nuhd/HWgUiRPEnKttRyINO6POyW7LXVl9y5OAO7WL8AA3cNH7NNp2wQZ6QTeqQ3u+
 l6Q40E7spPkd0z7TOIa+b8acjY3KjiR+K8XZm+rlB7GlI5mmlwlZKpdtDapUbBhUaSb1
 R3oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S9Hd2E/Qpw61lQsH4cIVU2nxOsEUFiGZ/6cSSR0b+MQ=;
 b=RHGmntynjJjKCsiUViooM8SsNWjE8bxVoI9qf9K4ANw/rlIpNxdleZ/U0fR3zYgIMa
 dCJK2w7GjM+888+5UFZUeRVpeBvYsaF0Gh+27s/Iq3VNaIyAHNpCWge5oaqdcGyoA8SP
 gQR6cSkcH8uIHKBQQGFH+wj+KXnWNZWqpA1mGyL+wGgizlS4gUt8Ds501keqSvRUASkf
 CAD2cMFOBto/gTFyBbQM/sW8VTtttzR/Ws2v04SOAKHLmjgKYf8NpBj+9grTwTnN34Bf
 jdrWm2JN6JHWe7RVUUfCJRyz3RBz9+xNZCC2OOvUjc0bKEjcg00pcV3OUk9ZzN2ub/M0
 4NIw==
X-Gm-Message-State: AOAM532U0vM/pjrddHAw1dEBXHfK7uFXfIquBKIfl5+wLD7zeqcGymqj
 3kP+y0uMuJcLIDkdPbPt0uWwFjbx3wr124rv
X-Google-Smtp-Source: ABdhPJw+n/81+bpgY1iJPJEdQb0d1AjWt4CwW29ZoleJlOjQCEcaCayiyhG72d8upanpa4b3XJHf+g==
X-Received: by 2002:a1c:1dcd:: with SMTP id d196mr4409956wmd.9.1631791862891; 
 Thu, 16 Sep 2021 04:31:02 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.31.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:31:02 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:35 +0200
Message-Id: <20210916113042.3631-20-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 19/26] drm/i915: use new cursor in
 intel_prepare_plane_fb v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIHJjdV9yZWFkX2xvY2soKS91bmxv
Y2soKQoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IHwgMTAgKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CmluZGV4IDEzNGE2YWNiZDhmYi4uZmE3M2E2NzU0MzczIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTEyOTAsNiArMTEyOTAsNyBAQCBpbnRl
bF9wcmVwYXJlX3BsYW5lX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwKIAlpOTE1X2dlbV9v
YmplY3RfZmx1c2hfZnJvbnRidWZmZXIob2JqLCBPUklHSU5fRElSVFlGQik7CiAKIAlpZiAoIW5l
d19wbGFuZV9zdGF0ZS0+dWFwaS5mZW5jZSkgeyAvKiBpbXBsaWNpdCBmZW5jaW5nICovCisJCXN0
cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKIAkJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAK
IAkJcmV0ID0gaTkxNV9zd19mZW5jZV9hd2FpdF9yZXNlcnZhdGlvbigmc3RhdGUtPmNvbW1pdF9y
ZWFkeSwKQEAgLTExMzAwLDEyICsxMTMwMSwxNSBAQCBpbnRlbF9wcmVwYXJlX3BsYW5lX2ZiKHN0
cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwKIAkJaWYgKHJldCA8IDApCiAJCQlnb3RvIHVucGluX2Zi
OwogCi0JCWZlbmNlID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQob2JqLT5iYXNlLnJlc3Yp
OwotCQlpZiAoZmVuY2UpIHsKKwkJcmN1X3JlYWRfbG9jaygpOworCQlkbWFfcmVzdl9mb3JfZWFj
aF9mZW5jZV91bmxvY2tlZChvYmotPmJhc2UucmVzdiwgJmN1cnNvciwgZmFsc2UsCisJCQkJCQkg
ZmVuY2UpIHsKKwkJCXJjdV9yZWFkX3VubG9jaygpOwogCQkJYWRkX3Jwc19ib29zdF9hZnRlcl92
YmxhbmsobmV3X3BsYW5lX3N0YXRlLT5ody5jcnRjLAogCQkJCQkJICAgZmVuY2UpOwotCQkJZG1h
X2ZlbmNlX3B1dChmZW5jZSk7CisJCQlyY3VfcmVhZF9sb2NrKCk7CiAJCX0KKwkJcmN1X3JlYWRf
dW5sb2NrKCk7CiAJfSBlbHNlIHsKIAkJYWRkX3Jwc19ib29zdF9hZnRlcl92YmxhbmsobmV3X3Bs
YW5lX3N0YXRlLT5ody5jcnRjLAogCQkJCQkgICBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZmVuY2Up
OwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
