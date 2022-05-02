Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DCB5174A2
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 18:38:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B98D648055
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 16:38:38 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by lists.linaro.org (Postfix) with ESMTPS id B963448060
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 May 2022 16:37:45 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id c11so10414689wrn.8
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 May 2022 09:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ANagkIapfhSoILXgRSazGJNpDPTeoeZ/i/DcazZHEZQ=;
        b=bTOuNbcCcpWCjHPdLC317BrGpkkTWG9yauH9kogTYDUS11gKUb/mgOriNiNu5FbMvh
         LAemZaOirJJUTzK3l2TFLtT8rRLpJvT7BZfdmi8xJtNUvDM/vFRM8b5haRUFr6Y1+4MC
         qCKqOvdTddBF7iTIx2hrrK3YFoDENFIjRM7SFF17g1uVfGU//XWTc8I0OyxhXUnfX96I
         8uHIPUuJmFcLDSrWHLzz2KRoGB52or1JhX5W0KPckcLJO6LOVnmxfQCirdxkWAXiCOoS
         b2OuUlzj4WKBC2Mr8e27FrWEEW5t0RhonknV7AExdcqkeJi7rBjBtbm8ey43b2ZNpyHP
         lxGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ANagkIapfhSoILXgRSazGJNpDPTeoeZ/i/DcazZHEZQ=;
        b=P3vWsH7joG52wqL7VUqvMkUym9gjACXrwcJC07o+XBgZrkjQGLISM0yFQynToshkbq
         k77wfHt5+CiUrzWxSCLjpEVBwG6BxGsGOIkECX37VcONmIgaGyJz7WsY37zLuXfWGiju
         9V5fIDOVSRuzUekCHTUEkGHMWfk5qLmUqNJe6bXtJk6Fh1bUDKu4mZpw9aUBbKfbkuHH
         z4RYQoqr5SRjCCfWi6nI7EFOlEBKCp+2l0tBteGsl+abIvjkZwnMD18KVuHM18YAM9MT
         WDn2VLQHsqZ/3jjWWwPJmvjUYOjZe1F/AKSIiI01PJUVStAJyU2DM2pjpV9/CXfI0oZX
         191A==
X-Gm-Message-State: AOAM532YELCgqnmWvXpNn8pDpvJiPfXk49BGci9scbaySeCzFGKPvtan
	yoy7OKfAWBz9OEtfaUwTiQ0=
X-Google-Smtp-Source: ABdhPJxUDlk3kbTFRN1X2D1q1vvW3bPqNNYNXQ7eHBEpgoyEe35FHldqGH1tFKFmx0FwRPQczX4rgA==
X-Received: by 2002:a5d:5749:0:b0:20a:ce36:b29 with SMTP id q9-20020a5d5749000000b0020ace360b29mr9849647wrw.559.1651509464807;
        Mon, 02 May 2022 09:37:44 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id p14-20020adfaa0e000000b0020c5253d8f6sm7294694wrd.66.2022.05.02.09.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 09:37:44 -0700 (PDT)
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
Date: Mon,  2 May 2022 18:37:19 +0200
Message-Id: <20220502163722.3957-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220502163722.3957-1-christian.koenig@amd.com>
References: <20220502163722.3957-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: LKAVCETYWTVGJ4XW4ERMXTL2MTYHXATX
X-Message-ID-Hash: LKAVCETYWTVGJ4XW4ERMXTL2MTYHXATX
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 12/15] drm: add user fence support to drm_gem_plane_helper_prepare_fb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LKAVCETYWTVGJ4XW4ERMXTL2MTYHXATX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SnVzdCBoYW5kbGUgdGhlbSB0aGUgc2FtZSB3YXkgYXMgZmVuY2VzIHdpdGggdGhlIERNQV9SRVNW
X1VTQUdFX1dSSVRFDQpmbGFnIHdoZW4gdGhlIERSSVZFUl9VU0VSX0ZFTkNFIGZsYWcgaXMgc2V0
Lg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMgfCA2
OCArKysrKysrKysrKysrKysrLS0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDQ1IGluc2VydGlv
bnMoKyksIDIzIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ry
bV9nZW1fYXRvbWljX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hl
bHBlci5jDQppbmRleCBhNTAyNmY2MTc3MzkuLjc1ZDA0MzMzZmYyZSAxMDA2NDQNCi0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYw0KKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jDQpAQCAtNSw2ICs1LDcgQEANCiANCiAjaW5jbHVk
ZSA8ZHJtL2RybV9hdG9taWNfc3RhdGVfaGVscGVyLmg+DQogI2luY2x1ZGUgPGRybS9kcm1fYXRv
bWljX3VhcGkuaD4NCisjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4NCiAjaW5jbHVkZSA8ZHJtL2Ry
bV9nZW0uaD4NCiAjaW5jbHVkZSA8ZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5oPg0KICNpbmNs
dWRlIDxkcm0vZHJtX2dlbV9mcmFtZWJ1ZmZlcl9oZWxwZXIuaD4NCkBAIC0xMjEsNiArMTIyLDQw
IEBADQogICogUGxhbmUgSGVscGVycw0KICAqLw0KIA0KK3N0YXRpYyBpbnQgY2hhaW5fZmJfZmVu
Y2VzKHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLA0KKwkJCSAgIGVudW0gZG1hX3Jlc3ZfdXNh
Z2UgdXNhZ2UsDQorCQkJICAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlKQ0KK3sNCisJc2l6ZV90
IGk7DQorCWludCByZXQ7DQorDQorCWZvciAoaSA9IDA7IGkgPCBmYi0+Zm9ybWF0LT5udW1fcGxh
bmVzOyArK2kpIHsNCisJCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gZHJtX2dlbV9mYl9n
ZXRfb2JqKGZiLCBpKTsNCisJCXN0cnVjdCBkbWFfZmVuY2UgKm5ldzsNCisNCisJCWlmIChXQVJO
X09OX09OQ0UoIW9iaikpDQorCQkJY29udGludWU7DQorDQorCQlyZXQgPSBkbWFfcmVzdl9nZXRf
c2luZ2xldG9uKG9iai0+cmVzdiwgdXNhZ2UsICZuZXcpOw0KKwkJaWYgKHJldCkNCisJCQlyZXR1
cm4gcmV0Ow0KKw0KKwkJaWYgKG5ldyAmJiAqZmVuY2UpIHsNCisJCQlzdHJ1Y3QgZG1hX2ZlbmNl
X2NoYWluICpjaGFpbiA9IGRtYV9mZW5jZV9jaGFpbl9hbGxvYygpOw0KKw0KKwkJCWlmICghY2hh
aW4pDQorCQkJCXJldHVybiAtRU5PTUVNOw0KKw0KKwkJCWRtYV9mZW5jZV9jaGFpbl9pbml0KGNo
YWluLCAqZmVuY2UsIG5ldywgMSk7DQorCQkJKmZlbmNlID0gJmNoYWluLT5iYXNlOw0KKw0KKwkJ
fSBlbHNlIGlmIChuZXcpIHsNCisJCQkqZmVuY2UgPSBuZXc7DQorCQl9DQorCX0NCisJcmV0dXJu
IDA7DQorfQ0KKw0KIC8qKg0KICAqIGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIoKSAt
IFByZXBhcmUgYSBHRU0gYmFja2VkIGZyYW1lYnVmZmVyDQogICogQHBsYW5lOiBQbGFuZQ0KQEAg
LTE0Myw4ICsxNzgsNiBAQCBpbnQgZHJtX2dlbV9wbGFuZV9oZWxwZXJfcHJlcGFyZV9mYihzdHJ1
Y3QgZHJtX3BsYW5lICpwbGFuZSwNCiAJCQkJICAgIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0
YXRlKQ0KIHsNCiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBkbWFfZmVuY2VfZ2V0KHN0YXRl
LT5mZW5jZSk7DQotCWVudW0gZG1hX3Jlc3ZfdXNhZ2UgdXNhZ2U7DQotCXNpemVfdCBpOw0KIAlp
bnQgcmV0Ow0KIA0KIAlpZiAoIXN0YXRlLT5mYikNCkBAIC0xNjMsMzIgKzE5NiwyMSBAQCBpbnQg
ZHJtX2dlbV9wbGFuZV9oZWxwZXJfcHJlcGFyZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwN
CiAJICogb2JleXMgYm90aCBpbXBsaWNpdCBhbmQgZXhwbGljaXQgZmVuY2VzIGZvciBwbGFuZSB1
cGRhdGVzLCB0aGVuIGl0DQogCSAqIHdpbGwgYnJlYWsgYWxsIHRoZSBiZW5lZml0cyBvZiBleHBs
aWNpdCBmZW5jaW5nLg0KIAkgKi8NCi0JdXNhZ2UgPSBmZW5jZSA/IERNQV9SRVNWX1VTQUdFX0tF
Uk5FTCA6IERNQV9SRVNWX1VTQUdFX1dSSVRFOw0KLQ0KLQlmb3IgKGkgPSAwOyBpIDwgc3RhdGUt
PmZiLT5mb3JtYXQtPm51bV9wbGFuZXM7ICsraSkgew0KLQkJc3RydWN0IGRybV9nZW1fb2JqZWN0
ICpvYmogPSBkcm1fZ2VtX2ZiX2dldF9vYmooc3RhdGUtPmZiLCBpKTsNCi0JCXN0cnVjdCBkbWFf
ZmVuY2UgKm5ldzsNCi0NCi0JCWlmIChXQVJOX09OX09OQ0UoIW9iaikpDQotCQkJY29udGludWU7
DQotDQotCQlyZXQgPSBkbWFfcmVzdl9nZXRfc2luZ2xldG9uKG9iai0+cmVzdiwgdXNhZ2UsICZu
ZXcpOw0KKwlpZiAoZmVuY2UpIHsNCisJCXJldCA9IGNoYWluX2ZiX2ZlbmNlcyhzdGF0ZS0+ZmIs
IERNQV9SRVNWX1VTQUdFX0tFUk5FTCwgJmZlbmNlKTsNCiAJCWlmIChyZXQpDQogCQkJZ290byBl
cnJvcjsNCiANCi0JCWlmIChuZXcgJiYgZmVuY2UpIHsNCi0JCQlzdHJ1Y3QgZG1hX2ZlbmNlX2No
YWluICpjaGFpbiA9IGRtYV9mZW5jZV9jaGFpbl9hbGxvYygpOw0KKwl9IGVsc2Ugew0KKwkJcmV0
ID0gY2hhaW5fZmJfZmVuY2VzKHN0YXRlLT5mYiwgRE1BX1JFU1ZfVVNBR0VfV1JJVEUsICZmZW5j
ZSk7DQorCQlpZiAocmV0KQ0KKwkJCWdvdG8gZXJyb3I7DQogDQotCQkJaWYgKCFjaGFpbikgew0K
LQkJCQlyZXQgPSAtRU5PTUVNOw0KKwkJaWYgKGRybV9jb3JlX2NoZWNrX2ZlYXR1cmUocGxhbmUt
PmRldiwgRFJJVkVSX1VTRVJfRkVOQ0UpKSB7DQorCQkJcmV0ID0gY2hhaW5fZmJfZmVuY2VzKHN0
YXRlLT5mYiwgRE1BX1JFU1ZfVVNBR0VfVVNFUiwNCisJCQkJCSAgICAgICZmZW5jZSk7DQorCQkJ
aWYgKHJldCkNCiAJCQkJZ290byBlcnJvcjsNCi0JCQl9DQotDQotCQkJZG1hX2ZlbmNlX2NoYWlu
X2luaXQoY2hhaW4sIGZlbmNlLCBuZXcsIDEpOw0KLQkJCWZlbmNlID0gJmNoYWluLT5iYXNlOw0K
LQ0KLQkJfSBlbHNlIGlmIChuZXcpIHsNCi0JCQlmZW5jZSA9IG5ldzsNCiAJCX0NCiAJfQ0KIA0K
LS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
