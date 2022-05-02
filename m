Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CAF5174A4
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 18:38:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 728A348049
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 16:38:50 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id CB4EE48058
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 May 2022 16:37:48 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id az27-20020a05600c601b00b0039431ba4905so30933wmb.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 May 2022 09:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=paocEfPgSqu67n8KLHsQSQJ/DJyKOx4pTU1l0q+u0sU=;
        b=VlkS5sgarlYWn0MnwUTY3aeqE4Snozzu8nEzmHLBPm4YKIU7G+YGuHGBpdnwVjenim
         IisHP/2UQFKrjOj9yR1h4U8zH81F6bicVL0O6wZ1Rl+PebVe7A33GUHVGWHfdEt0fGHL
         50SHMe3EyX1yoojUuwDJKaCiAxz6xAL+d4np6qFo0GrAZQB1yRIrmlaEwFAaxc1PdM/w
         O5Jn5KOZeJhmgH6SJPjXshycuGRsZS2IvvtN8/kob74SDdniTfz+W8ix+Tzle84Aonfu
         If2W70R4KzP2rCZrk7cux5qY36dYnqm6OniYOzgEoSNHZPPeyYENMnS8L9lxJ+6LG9EM
         wXOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=paocEfPgSqu67n8KLHsQSQJ/DJyKOx4pTU1l0q+u0sU=;
        b=j6qUCaYfSEI+3Pyf1nBm6WhCMkCPkZOgookv6zrQXPZweTa+JlwPPg1IH9z9UgmDAC
         SEj3LwoCfh+SLrQgpWqTIKmLMEXRKfB66nkrnRnOk7VU1uASrUOG4f5N/Jxi/zPy2hm/
         Gj/iPKTjoDN4YnBbkEasrpPkFjF6p/nLNcTMd701fcsRLBJnJhtRxG/yAVvkuI14RJlg
         9lQlNQ+nL90VsAGuBvXmhxBWRJqmvZIfMuvEeh+RbwZSR1UJ01A365PwFI9c3vF90Iim
         BCV5AP9+d8oR7sM6hHHUVuaIUxrSkcylvNZ4FGgsLbwoo501WuBms8QE44iOOcn3MKHa
         r+tA==
X-Gm-Message-State: AOAM533GnNXV59XrG1AGahhHqN1yi2xysjFYmKMZYomyL4Fjmiye/Z5V
	nGTF+b5emkEU5bdq4cZFtAc=
X-Google-Smtp-Source: ABdhPJxl04mnJLBE6tuBmOzv32rWsrcZLRuHOgfEtMeSpdmfs0QlfaGTPzlaUDTFvluVRH+0hWC5CQ==
X-Received: by 2002:a1c:f415:0:b0:37f:ab4d:1df2 with SMTP id z21-20020a1cf415000000b0037fab4d1df2mr15431594wma.75.1651509467952;
        Mon, 02 May 2022 09:37:47 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id p14-20020adfaa0e000000b0020c5253d8f6sm7294694wrd.66.2022.05.02.09.37.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 09:37:47 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	jason@jlekstrand.net,
	daniels@collabora.com,
	skhawaja@google.com,
	maad.aldabagh@amd.com,
	sergemetral@google.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	Felix.Kuehling@amd.com,
	alexander.deucher@amd.com,
	tzimmermann@suse.de,
	tvrtko.ursulin@linux.intel.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon,  2 May 2022 18:37:21 +0200
Message-Id: <20220502163722.3957-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220502163722.3957-1-christian.koenig@amd.com>
References: <20220502163722.3957-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: RB6GDJFQB6O3DIVJFS4E7TXHZ6C72G3R
X-Message-ID-Hash: RB6GDJFQB6O3DIVJFS4E7TXHZ6C72G3R
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Harry Wentland <harry.wentland@amd.com>, Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>, Roman Li <Roman.Li@amd.com>, Qingqing Zhuo <qingqing.zhuo@amd.com>, Jude Shih <shenshih@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 14/15] drm/amdgpu: switch DM to atomic fence helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RB6GDJFQB6O3DIVJFS4E7TXHZ6C72G3R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBnaXZlcyB1cyB0aGUgc3RhbmRhcmQgYXRvbWljIGltcGxpY2l0IGFuZCBleHBsaWNpdCBm
ZW5jaW5nIHJ1bGVzLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQpDYzogSGFycnkgV2VudGxhbmQgPGhhcnJ5LndlbnRsYW5kQGFt
ZC5jb20+DQpDYzogTmljaG9sYXMgS2F6bGF1c2thcyA8bmljaG9sYXMua2F6bGF1c2thc0BhbWQu
Y29tPg0KQ2M6IFJvbWFuIExpIDxSb21hbi5MaUBhbWQuY29tPg0KQ2M6IFFpbmdxaW5nIFpodW8g
PHFpbmdxaW5nLnpodW9AYW1kLmNvbT4NCkNjOiBKdWRlIFNoaWggPHNoZW5zaGloQGFtZC5jb20+
DQpDYzogV2F5bmUgTGluIDxXYXluZS5MaW5AYW1kLmNvbT4NCkNjOiBSb2RyaWdvIFNpcXVlaXJh
IDxSb2RyaWdvLlNpcXVlaXJhQGFtZC5jb20+DQotLS0NCiAuLi4vZ3B1L2RybS9hbWQvZGlzcGxh
eS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgfCAyMyArKysrKysrKy0tLS0tLS0tLS0tDQogMSBmaWxl
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMNCmluZGV4IDJh
ZGU4MmNmYjFhYy4uYzViMjQxN2FkY2M2IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYw0KQEAgLTgzLDYgKzgzLDcgQEANCiAjaW5j
bHVkZSA8ZHJtL2RybV9lZGlkLmg+DQogI2luY2x1ZGUgPGRybS9kcm1fdmJsYW5rLmg+DQogI2lu
Y2x1ZGUgPGRybS9kcm1fYXVkaW9fY29tcG9uZW50Lmg+DQorI2luY2x1ZGUgPGRybS9kcm1fZ2Vt
X2F0b21pY19oZWxwZXIuaD4NCiANCiAjaWYgZGVmaW5lZChDT05GSUdfRFJNX0FNRF9EQ19EQ04p
DQogI2luY2x1ZGUgIml2c3JjaWQvZGNuL2lycXNyY3NfZGNuXzFfMC5oIg0KQEAgLTc2MjcsNiAr
NzYyOCwxMCBAQCBzdGF0aWMgaW50IGRtX3BsYW5lX2hlbHBlcl9wcmVwYXJlX2ZiKHN0cnVjdCBk
cm1fcGxhbmUgKnBsYW5lLA0KIAkJZ290byBlcnJvcl91bnBpbjsNCiAJfQ0KIA0KKwlyID0gZHJt
X2dlbV9wbGFuZV9oZWxwZXJfcHJlcGFyZV9mYihwbGFuZSwgbmV3X3N0YXRlKTsNCisJaWYgKHVu
bGlrZWx5KHIgIT0gMCkpDQorCQlnb3RvIGVycm9yX3VucGluOw0KKw0KIAlhbWRncHVfYm9fdW5y
ZXNlcnZlKHJibyk7DQogDQogCWFmYi0+YWRkcmVzcyA9IGFtZGdwdV9ib19ncHVfb2Zmc2V0KHJi
byk7DQpAQCAtOTE2MCw3ICs5MTY1LDYgQEAgc3RhdGljIHZvaWQgYW1kZ3B1X2RtX2NvbW1pdF9w
bGFuZXMoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlLA0KIAlzdHJ1Y3QgZG1fY3J0Y19z
dGF0ZSAqZG1fb2xkX2NydGNfc3RhdGUgPQ0KIAkJCXRvX2RtX2NydGNfc3RhdGUoZHJtX2F0b21p
Y19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIHBjcnRjKSk7DQogCWludCBwbGFuZXNfY291bnQg
PSAwLCB2cG9zLCBocG9zOw0KLQlsb25nIHI7DQogCXVuc2lnbmVkIGxvbmcgZmxhZ3M7DQogCXN0
cnVjdCBhbWRncHVfYm8gKmFibzsNCiAJdWludDMyX3QgdGFyZ2V0X3ZibGFuaywgbGFzdF9mbGlw
X3ZibGFuazsNCkBAIC05MTczLDYgKzkxNzcsNyBAQCBzdGF0aWMgdm9pZCBhbWRncHVfZG1fY29t
bWl0X3BsYW5lcyhzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUsDQogCQlzdHJ1Y3QgZGNf
ZmxpcF9hZGRycyBmbGlwX2FkZHJzW01BWF9TVVJGQUNFU107DQogCQlzdHJ1Y3QgZGNfc3RyZWFt
X3VwZGF0ZSBzdHJlYW1fdXBkYXRlOw0KIAl9ICpidW5kbGU7DQorCWludCByOw0KIA0KIAlidW5k
bGUgPSBremFsbG9jKHNpemVvZigqYnVuZGxlKSwgR0ZQX0tFUk5FTCk7DQogDQpAQCAtOTE4MSw2
ICs5MTg2LDEwIEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9jb21taXRfcGxhbmVzKHN0cnVjdCBk
cm1fYXRvbWljX3N0YXRlICpzdGF0ZSwNCiAJCWdvdG8gY2xlYW51cDsNCiAJfQ0KIA0KKwlyID0g
ZHJtX2F0b21pY19oZWxwZXJfd2FpdF9mb3JfZmVuY2VzKGRldiwgc3RhdGUsIGZhbHNlKTsNCisJ
aWYgKHVubGlrZWx5KHIpKQ0KKwkJRFJNX0VSUk9SKCJXYWl0aW5nIGZvciBmZW5jZXMgdGltZWQg
b3V0ISIpOw0KKw0KIAkvKg0KIAkgKiBEaXNhYmxlIHRoZSBjdXJzb3IgZmlyc3QgaWYgd2UncmUg
ZGlzYWJsaW5nIGFsbCB0aGUgcGxhbmVzLg0KIAkgKiBJdCdsbCByZW1haW4gb24gdGhlIHNjcmVl
biBhZnRlciB0aGUgcGxhbmVzIGFyZSByZS1lbmFibGVkDQpAQCAtOTIzNSwxOCArOTI0NCw2IEBA
IHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9jb21taXRfcGxhbmVzKHN0cnVjdCBkcm1fYXRvbWljX3N0
YXRlICpzdGF0ZSwNCiAJCX0NCiANCiAJCWFibyA9IGdlbV90b19hbWRncHVfYm8oZmItPm9ialsw
XSk7DQotDQotCQkvKg0KLQkJICogV2FpdCBmb3IgYWxsIGZlbmNlcyBvbiB0aGlzIEZCLiBEbyBs
aW1pdGVkIHdhaXQgdG8gYXZvaWQNCi0JCSAqIGRlYWRsb2NrIGR1cmluZyBHUFUgcmVzZXQgd2hl
biB0aGlzIGZlbmNlIHdpbGwgbm90IHNpZ25hbA0KLQkJICogYnV0IHdlIGhvbGQgcmVzZXJ2YXRp
b24gbG9jayBmb3IgdGhlIEJPLg0KLQkJICovDQotCQlyID0gZG1hX3Jlc3Zfd2FpdF90aW1lb3V0
KGFiby0+dGJvLmJhc2UucmVzdiwNCi0JCQkJCSAgRE1BX1JFU1ZfVVNBR0VfV1JJVEUsIGZhbHNl
LA0KLQkJCQkJICBtc2Vjc190b19qaWZmaWVzKDUwMDApKTsNCi0JCWlmICh1bmxpa2VseShyIDw9
IDApKQ0KLQkJCURSTV9FUlJPUigiV2FpdGluZyBmb3IgZmVuY2VzIHRpbWVkIG91dCEiKTsNCi0N
CiAJCWZpbGxfZGNfcGxhbmVfaW5mb19hbmRfYWRkcigNCiAJCQlkbS0+YWRldiwgbmV3X3BsYW5l
X3N0YXRlLA0KIAkJCWFmYi0+dGlsaW5nX2ZsYWdzLA0KLS0gDQoyLjI1LjENCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
