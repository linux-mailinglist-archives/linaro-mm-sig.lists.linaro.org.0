Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4168A408C90
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:19:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91CCA62175
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:19:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CB08A6658C; Mon, 13 Sep 2021 13:18:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EEDBC6341D;
	Mon, 13 Sep 2021 13:18:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DCAE9666F0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E57C6619C1; Mon, 13 Sep 2021 13:17:42 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id 5B63F62175
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:40 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id u16so14659830wrn.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3dTnv0wZDKxkTKIX7G+9uQukAnU514pBLlNXg29d5fI=;
 b=Lgl8jFt56FEVABP4weWNvGk/OVvu10QCGLGUUofKJsRqFEbGhFfGR1qdVYJQvKSWWT
 nTAjH5rflOIuPro5rPslw3CLOKtWa1ZNMLOiwwT9gOgnTACex5+PlP3KWDyCggFjje7A
 Bbe+GMZq9MbwL2sQsiZTB8YcwWW9vBhWSCfSFK7X+12l3fYMDHuLKiZ++DMXsSrwkJr3
 qCMqaZYpcHHEcPIz0HCpzA/RGM8yJhiXdXEObIKr/fyyiW9DMa3RfvteN8NRzyOQuSRP
 ug8LiQq46fFt1Kk5caTZm+hLk8R1MVAVCXYVWzP0S7314Ra7SERyUcWGcRCJDm6mnZVM
 c4/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3dTnv0wZDKxkTKIX7G+9uQukAnU514pBLlNXg29d5fI=;
 b=0DsCV6QYUy8zY6MJfb61fWpvgJz8DxEwwR/PzjrF6yQGwogqg4W1Qv/3fFVop/YxF+
 S+sSvdiKAW9bjf2d4+PvxyecceWWx0vEuZV0HDSJdRCcSBQQjjDl8z1S7E752VhmwQnE
 XEE8fqU5XqTQH79r+fO81aQtEhM5Dp3XsTecKpr0w4sgAG+GVHm5le3zRQtNf0lVT31v
 jjJXShOPQi0TekALGeVpWciS32AFU/lRqFWph7SqodDOPwJC4eKDf+fFigVMTTdeXO0T
 b/OreCpiBzj1ya3cuZpWRktcZE2biTkeM5/6fRe/5Nk4MYh27s5SzaJtF5tFxWEb0y+n
 gT1Q==
X-Gm-Message-State: AOAM532PVjrea1dZy2pj9fGq31mP6qHnipbTcGva0UQqt2ri7mjqbVrI
 2pPXS9ver6aCzMjvfenIGtQvERO1EJCTov6Q
X-Google-Smtp-Source: ABdhPJzDYlRjaCjqMmgzMr0ONYoy8hQKmWyShaF7QubY5uWmm6+5jeTpCRHXkCQI288FNs6ni5jddg==
X-Received: by 2002:a5d:6292:: with SMTP id k18mr7102371wru.110.1631539059525; 
 Mon, 13 Sep 2021 06:17:39 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:38 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:17:02 +0200
Message-Id: <20210913131707.45639-22-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 21/26] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

TWFrZXMgdGhlIGhhbmRsaW5nIGEgYml0IG1vcmUgY29tcGxleCwgYnV0IGF2b2lkcyB0aGUgdXNl
IG9mCmRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKCkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2RybV9nZW1fYXRvbWljX2hlbHBlci5jIHwgOSArKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRv
bWljX2hlbHBlci5jCmluZGV4IGU1NzAzOThhYmQ3OC4uOWY1MWZlZjgyNjQ0IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jCkBAIC0xNDMsNiArMTQzLDcgQEAKICAqLwog
aW50IGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIoc3RydWN0IGRybV9wbGFuZSAqcGxh
bmUsIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0YXRlKQogeworCXN0cnVjdCBkbWFfcmVzdl9j
dXJzb3IgY3Vyc29yOwogCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqOwogCXN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlOwogCkBAIC0xNTAsOSArMTUxLDEzIEBAIGludCBkcm1fZ2VtX3BsYW5lX2hl
bHBlcl9wcmVwYXJlX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3BsYW5l
X3N0CiAJCXJldHVybiAwOwogCiAJb2JqID0gZHJtX2dlbV9mYl9nZXRfb2JqKHN0YXRlLT5mYiwg
MCk7Ci0JZmVuY2UgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChvYmotPnJlc3YpOwotCWRy
bV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwgZmVuY2UpOworCWRtYV9yZXN2X2Zv
cl9lYWNoX2ZlbmNlX3VubG9ja2VkKG9iai0+cmVzdiwgJmN1cnNvciwgZmFsc2UsIGZlbmNlKSB7
CisJCS8qIFRPRE86IFdlIG9ubHkgdXNlIHRoZSBmaXJzdCB3cml0ZSBmZW5jZSBoZXJlICovCisJ
CWRybV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwgZmVuY2UpOworCQlyZXR1cm4g
MDsKKwl9CiAKKwlkcm1fYXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUoc3RhdGUsIE5VTEwpOwog
CXJldHVybiAwOwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZHJtX2dlbV9wbGFuZV9oZWxwZXJfcHJl
cGFyZV9mYik7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
