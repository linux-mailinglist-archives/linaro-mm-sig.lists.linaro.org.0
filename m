Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB8F40F7F6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:37:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C1278666F6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:37:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9E42C63421; Fri, 17 Sep 2021 12:37:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A53263413;
	Fri, 17 Sep 2021 12:37:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7475769CD7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9271769CED; Fri, 17 Sep 2021 12:35:45 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 203F269CDF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:39 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id i23so14967838wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=15+uJTFQ+0nCVkT4/mZ7IrPmRTAjcaW6IMKjQRnhGys=;
 b=GnEDY2QZZLVo3N6y/3h/jMG/Fl//rb8DWsmVdxMaNQCfKakz2pqp4y4QJfHGQZrlev
 DHCXwHbKJvJqven9s8MIZUTJh/hAYNA18hmlD9sDYep0iAfAWtY4onOhOVlfDOEiW26W
 eldwTPDvHkWwz74bKWWdLE+Oo1C+nwZgWH3J1W2485DT89bccoqn1Gp1N33chZm1WTAf
 rYlMbRmmWTlNlCBAl912AD+HuCKiyKb5bLfgTYMVxgLXr1vOTwL62BQwIz/kT8jtQk71
 bCNuiBb8aZqR6hDQIy5NHDVBiMUh+++jut+tYNZhALAE+ulGCo+sC1O/d1l6zjlMRCgl
 70Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=15+uJTFQ+0nCVkT4/mZ7IrPmRTAjcaW6IMKjQRnhGys=;
 b=Z61+KK8gtgLuO9DGIUHrsASZayXwVMAZiK6SUnIwCQ5IBwQn9s+GXkAUkD12cSJfpF
 PA9lNBkPK0cm2O/IrI9CiLm+Opxptu2On++pIfFrdbqqAbvCN/qy0yhVxdD+XVQNmLwO
 xe/BsWXhBLJ5yaBXG1CpYrfBu7b1rQwpRiq/DgyzJbncTp6LQBHuzaV4h2nJ8VUPwmJx
 i0puDgkhIBTazLHRcovJN7np1O9+804mW/MowGHSH5bgJXt6AquzAjoBQdAtggKvpLhP
 91EQyjIuzvw0K7NrVZwMulLnGtjvW8RRn4ux2iEp4lgUYoviARwI0MA5dVD3YTpbkNXn
 KH8g==
X-Gm-Message-State: AOAM533ce9K2Vmi/imB3wdu+Fq59RZSpJq7hjRVdF1QypOLWjBAEyEci
 bGETTDb9jXgboVWKZMu8inwGLnx6peY=
X-Google-Smtp-Source: ABdhPJzdTXHakNF50MDsYEldBoA37kWhAHaVU9uOM525IrV+75dybxQfkaNHiR6FU0vQleGYfhuaXA==
X-Received: by 2002:adf:f48e:: with SMTP id l14mr12138630wro.109.1631882138177; 
 Fri, 17 Sep 2021 05:35:38 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:37 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:13 +0200
Message-Id: <20210917123513.1106-27-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 26/26] dma-buf: nuke
 dma_resv_get_excl_unlocked
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGV1cmVrYSwgdGhhdCdzIGZpbmFsbHkgbm90IHVzZWQgYW55IG1vcmUuCgpTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oIHwgMjYgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKaW5kZXggOGM5NjhmOGM5ZDMzLi5m
NDJjYTI1NGFjYjUgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAorKysgYi9p
bmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKQEAgLTQyMywzMiArNDIzLDYgQEAgZG1hX3Jlc3ZfZXhj
bF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikKIAlyZXR1cm4gcmN1X2RlcmVmZXJlbmNlX2No
ZWNrKG9iai0+ZmVuY2VfZXhjbCwgZG1hX3Jlc3ZfaGVsZChvYmopKTsKIH0KIAotLyoqCi0gKiBk
bWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZCAtIGdldCB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0J3MK
LSAqIGV4Y2x1c2l2ZSBmZW5jZSwgd2l0aG91dCBsb2NrIGhlbGQuCi0gKiBAb2JqOiB0aGUgcmVz
ZXJ2YXRpb24gb2JqZWN0Ci0gKgotICogSWYgdGhlcmUgaXMgYW4gZXhjbHVzaXZlIGZlbmNlLCB0
aGlzIGF0b21pY2FsbHkgaW5jcmVtZW50cyBpdCdzCi0gKiByZWZlcmVuY2UgY291bnQgYW5kIHJl
dHVybnMgaXQuCi0gKgotICogUkVUVVJOUwotICogVGhlIGV4Y2x1c2l2ZSBmZW5jZSBvciBOVUxM
IGlmIG5vbmUKLSAqLwotc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX2ZlbmNlICoKLWRtYV9yZXN2
X2dldF9leGNsX3VubG9ja2VkKHN0cnVjdCBkbWFfcmVzdiAqb2JqKQotewotCXN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlOwotCi0JaWYgKCFyY3VfYWNjZXNzX3BvaW50ZXIob2JqLT5mZW5jZV9leGNs
KSkKLQkJcmV0dXJuIE5VTEw7Ci0KLQlyY3VfcmVhZF9sb2NrKCk7Ci0JZmVuY2UgPSBkbWFfZmVu
Y2VfZ2V0X3JjdV9zYWZlKCZvYmotPmZlbmNlX2V4Y2wpOwotCXJjdV9yZWFkX3VubG9jaygpOwot
Ci0JcmV0dXJuIGZlbmNlOwotfQotCiAvKioKICAqIGRtYV9yZXN2X3NoYXJlZF9saXN0IC0gZ2V0
IHRoZSByZXNlcnZhdGlvbiBvYmplY3QncyBzaGFyZWQgZmVuY2UgbGlzdAogICogQG9iajogdGhl
IHJlc2VydmF0aW9uIG9iamVjdAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
