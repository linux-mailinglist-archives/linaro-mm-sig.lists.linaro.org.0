Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 00098422575
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:40:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8108660C29
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:40:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A23F660431; Tue,  5 Oct 2021 11:40:14 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B81C66055A;
	Tue,  5 Oct 2021 11:40:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 292B661945
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2B0DA631D5; Tue,  5 Oct 2021 11:38:11 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 70C3F60EFD
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:07 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id v25so26045794wra.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HMzUm0lSAp/TufSF81gwSiHnNGVLq2ZvLYEQaLMOzyo=;
 b=hhHpVvwfMnnHwI+vQ3XITa1aQYsSBFoaZX0m247XUTVUdPyi95aZsOWAs7pWOTaUf3
 HyrNaZMY3shrmKT6IZaoAgBOlgpaLvyxlEKzD5Aa4co3S38LnrObkBVf26lJlSiiZ78E
 wPBaDXTyaPiWKt8NUSKjz8+S21sWA8WRXW4vHLXV1PNsmqbNmFIrAHO7AnmWQeWaQgI+
 /tNXHVnNmRPmFecmPczhHyy2ofUQjy2Cy6a2or4Hts3yJe0Jk7UBZ/XbJMB7RbHSFSJk
 lJ4l4nFr2v9xdRbe/N9A38ee3e85egb0XrEAsR97AAIyBe4Lqg67phZau19YDCuextaW
 nl+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HMzUm0lSAp/TufSF81gwSiHnNGVLq2ZvLYEQaLMOzyo=;
 b=qExRyzaON0it0JVN8dYYBkmac0mk2fvk4frd9jGG3eNKqDZlyboaF004unX79t7wbh
 eYelH6Ecj3LoMNZfwpGzv+KkFsZc8155yjt5CrmXm2dG1Zm/7s1IHVXr49v3h6IkWsB0
 twxiLtFb/XC5Yc3c1WfuvvF+c3bhl2HslNkpTOQ+yWrUGfc5va2h6Qq8A1WbGs/7REuN
 gaHFi0Ok6Iv2VWLBBH4Mt7vTm3dnWUEu4tIhc0ZEGDXYJPMP24141p/3JCYkFqigOKLK
 DlJtiuQanplnjTwiLQtjOl4+02kuNBVa6KoEhSCTGP7pxibr/IwNtomWOtLwPjodSmH9
 T9Og==
X-Gm-Message-State: AOAM530UuhYomNxHGCwYMSwkQaZ6A2SeIhMcsOJqOo6XtWyL7TY3fh3G
 St2vpS49hoBUrmQ/dLaoPzKkQb0dCU8=
X-Google-Smtp-Source: ABdhPJyUGvcV1ZwGKRs9V2vqonO4HKIO8QTHt0jxiHgx2NA7aB6xjsD2Mr9jkJgmiZDsWbX6ey+rEA==
X-Received: by 2002:a5d:500f:: with SMTP id e15mr6173258wrt.90.1633433886565; 
 Tue, 05 Oct 2021 04:38:06 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.38.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:38:06 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:38 +0200
Message-Id: <20211005113742.1101-25-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 24/28] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb v2
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

TWFrZXMgdGhlIGhhbmRsaW5nIGEgYml0IG1vcmUgY29tcGxleCwgYnV0IGF2b2lkcyB0aGUgdXNl
IG9mCmRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKCkuCgp2MjogaW1wcm92ZSBjb2RpbmcgYW5k
IGRvY3VtZW50YXRpb24KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVs
cGVyLmMgfCAxMyArKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9h
dG9taWNfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMK
aW5kZXggZTU3MDM5OGFiZDc4Li44NTM0Zjc4ZDRkNmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dl
bV9hdG9taWNfaGVscGVyLmMKQEAgLTE0Myw2ICsxNDMsNyBAQAogICovCiBpbnQgZHJtX2dlbV9w
bGFuZV9oZWxwZXJfcHJlcGFyZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0IGRy
bV9wbGFuZV9zdGF0ZSAqc3RhdGUpCiB7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwog
CXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwog
CkBAIC0xNTAsOSArMTUxLDE3IEBAIGludCBkcm1fZ2VtX3BsYW5lX2hlbHBlcl9wcmVwYXJlX2Zi
KHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3BsYW5lX3N0CiAJCXJldHVybiAw
OwogCiAJb2JqID0gZHJtX2dlbV9mYl9nZXRfb2JqKHN0YXRlLT5mYiwgMCk7Ci0JZmVuY2UgPSBk
bWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChvYmotPnJlc3YpOwotCWRybV9hdG9taWNfc2V0X2Zl
bmNlX2Zvcl9wbGFuZShzdGF0ZSwgZmVuY2UpOworCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNv
ciwgb2JqLT5yZXN2LCBmYWxzZSk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQo
JmN1cnNvciwgZmVuY2UpIHsKKwkJLyogVE9ETzogV2Ugb25seSB1c2UgdGhlIGZpcnN0IHdyaXRl
IGZlbmNlIGhlcmUgYW5kIG5lZWQgdG8gZml4CisJCSAqIHRoZSBkcm1fYXRvbWljX3NldF9mZW5j
ZV9mb3JfcGxhbmUoKSBBUEkgdG8gYWNjZXB0IG1vcmUgdGhhbgorCQkgKiBvbmUuICovCisJCWRt
YV9mZW5jZV9nZXQoZmVuY2UpOworCQlicmVhazsKKwl9CisJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1
cnNvcik7CiAKKwlkcm1fYXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUoc3RhdGUsIGZlbmNlKTsK
IAlyZXR1cm4gMDsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKGRybV9nZW1fcGxhbmVfaGVscGVyX3By
ZXBhcmVfZmIpOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
