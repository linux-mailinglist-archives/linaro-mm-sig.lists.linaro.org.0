Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3434F7AC3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 11:00:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 19FBC402CA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 09:00:58 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id F32E5402D4
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 09:00:01 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id q26so5583273edc.7
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 02:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cJnlk9Oe18dreLhx9uK9ZwzcTZstYY5iUuUfkW8tRrM=;
        b=l2gjx89JUUtewB70mA2emV55sPZiTfAi1iEeA9vMVFBvGhGRfb5pueQojIJxWZ2CUv
         cMXLooNuYPfOgXmDvsDzpMIwkdeaISPyy2/s4xZEF22nv4BqiYRhWJ29tTGizcZqDtc5
         LISUMM2tv7hWHZYeP5J3gkjwXgrMlZkMXvtIOcOK9oK2KVubkeZ1vCpi0Om+drJq/4Iv
         XtGDB6y8hzgZkcQ10/ufDpNfgN04DK/n5Gldbyt7aJNaYIzcgyDvvvHgaZ97AY9/xEwS
         PYtX5LpOPCufWjFmaI3c5QF/FHPOz6N+lorzoO8MSxc+yKxWmv/M2E7kcyIEmAGokuIM
         KTgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cJnlk9Oe18dreLhx9uK9ZwzcTZstYY5iUuUfkW8tRrM=;
        b=qLdCKNGeQcwcaUmqEmz5JksmDsgRnb+/jt0EE9MwditjQP6jsP4h8gENc9bRWyoyrI
         N49/ejDeNuRrYcinFsrHfjV3X6EsG/hCQ8TSSrwwBZ5KHD7wJgCs0wPKJS/Dy2WmRIYf
         IZMHQQYzIFYAN9acA69ZMBHRmH+IHmCQMlNQybaUKj7eCaSW/qjiTcx3UoTWtiCv+Tyf
         DymsM/OwD7MzKytPOlKc8unXm2Oahw3dMNxcz/L0YOYgJOqiirDQsQ/BawgKrzPDsayl
         1n+m0AFRVXQtLwRwHGvhjvcBtQpaNmBmo3naIcXnqDLNQL8tRGs1LiOfyW5AywEuoziW
         qcqQ==
X-Gm-Message-State: AOAM532j+zjsLy9guYj3kLZpu9HuDYk7IbgHG5PgSbo2gdG8P+sr/SBt
	CZPSBOwU7v2vNhCv9JPkHYI=
X-Google-Smtp-Source: ABdhPJz10luuyog+RiWlnfRijKPRqrjTT5XDcO7k91kIKNaQlGO+86J2TKiPrmCi9PjeJ0hM4s96Sg==
X-Received: by 2002:a05:6402:42d4:b0:412:c26b:789 with SMTP id i20-20020a05640242d400b00412c26b0789mr13097363edc.232.1649322001125;
        Thu, 07 Apr 2022 02:00:01 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id h26-20020a170906111a00b006e778bd4fc8sm5186563eja.38.2022.04.07.02.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 02:00:00 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel.vetter@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Apr 2022 10:59:41 +0200
Message-Id: <20220407085946.744568-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220407085946.744568-1-christian.koenig@amd.com>
References: <20220407085946.744568-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: NQXHNSB537WUXLYRJGDSZU367MFUYU6D
X-Message-ID-Hash: NQXHNSB537WUXLYRJGDSZU367MFUYU6D
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 10/15] drm/amdgpu: use DMA_RESV_USAGE_BOOKKEEP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NQXHNSB537WUXLYRJGDSZU367MFUYU6D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNlIERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQIGZvciBWTSBwYWdlIHRhYmxlIHVwZGF0ZXMgYW5k
IEtGRCBwcmVlbXB0aW9uIGZlbmNlLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfYW1ka2ZkX2dwdXZtLmMgfCAyICstDQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3ZtX3NkbWEuYyAgICAgIHwgMyArKy0NCiAyIGZpbGVzIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZ3B1dm0uYyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZ3B1dm0uYw0KaW5kZXggNTAzMWUyNmU2NzE2Li44MDhl
MjFkY2I1MTcgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
YW1ka2ZkX2dwdXZtLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9h
bWRrZmRfZ3B1dm0uYw0KQEAgLTI2Myw3ICsyNjMsNyBAQCBzdGF0aWMgaW50IGFtZGdwdV9hbWRr
ZmRfcmVtb3ZlX2V2aWN0aW9uX2ZlbmNlKHN0cnVjdCBhbWRncHVfYm8gKmJvLA0KIAkgKi8NCiAJ
cmVwbGFjZW1lbnQgPSBkbWFfZmVuY2VfZ2V0X3N0dWIoKTsNCiAJZG1hX3Jlc3ZfcmVwbGFjZV9m
ZW5jZXMoYm8tPnRiby5iYXNlLnJlc3YsIGVmLT5iYXNlLmNvbnRleHQsDQotCQkJCXJlcGxhY2Vt
ZW50LCBETUFfUkVTVl9VU0FHRV9SRUFEKTsNCisJCQkJcmVwbGFjZW1lbnQsIERNQV9SRVNWX1VT
QUdFX0JPT0tLRUVQKTsNCiAJZG1hX2ZlbmNlX3B1dChyZXBsYWNlbWVudCk7DQogCXJldHVybiAw
Ow0KIH0NCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdm1f
c2RtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtX3NkbWEuYw0KaW5k
ZXggZGJiNTUxNzYyODA1Li45NDg1YjU0MTk0N2UgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfdm1fc2RtYS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfdm1fc2RtYS5jDQpAQCAtMTEyLDcgKzExMiw4IEBAIHN0YXRpYyBpbnQg
YW1kZ3B1X3ZtX3NkbWFfY29tbWl0KHN0cnVjdCBhbWRncHVfdm1fdXBkYXRlX3BhcmFtcyAqcCwN
CiAJCXN3YXAocC0+dm0tPmxhc3RfdW5sb2NrZWQsIGYpOw0KIAkJZG1hX2ZlbmNlX3B1dCh0bXAp
Ow0KIAl9IGVsc2Ugew0KLQkJYW1kZ3B1X2JvX2ZlbmNlKHAtPnZtLT5yb290LmJvLCBmLCB0cnVl
KTsNCisJCWRtYV9yZXN2X2FkZF9mZW5jZShwLT52bS0+cm9vdC5iby0+dGJvLmJhc2UucmVzdiwg
ZiwNCisJCQkJICAgRE1BX1JFU1ZfVVNBR0VfQk9PS0tFRVApOw0KIAl9DQogDQogCWlmIChmZW5j
ZSAmJiAhcC0+aW1tZWRpYXRlKQ0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
