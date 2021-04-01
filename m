Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 427DC350BD9
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Apr 2021 03:24:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15BB566464
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Apr 2021 01:24:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0898D664E2; Thu,  1 Apr 2021 01:24:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9DC0565FE5;
	Thu,  1 Apr 2021 01:23:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7AEDB617DE
 for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Apr 2021 01:23:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5A03C65FE5; Thu,  1 Apr 2021 01:23:55 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by lists.linaro.org (Postfix) with ESMTPS id 426E0617DE
 for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Apr 2021 01:23:54 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id t140so500636pgb.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Mar 2021 18:23:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+2jBkeo878G+FkmC1vjkk79rQNW00YDmS4BnvfJ2kYU=;
 b=mc6HWL4ko8nazxUgOrN7Vmgu/kkaQAcjERc5yrcpq+cBSiSUJAgx9nEPWhZgQd/j9a
 M6tmkXALuuo8ULX7F865RpIe9O4gw6/PhdKVNhJiDahLLoJURLD9O8yXmoOPmOvXru1F
 EZIj/hDXrH2HvGKabAFwZTQ+rTILdLs1jHkuvCcsJKjbvCOPTquPN3V/uMFqvqjrNiEy
 nUM0FGka9VD6rT+K7Qsp508Sp5+5X0kopIeFU5LhHCvIvWdMC+v7k6aK7XvpF1BLFWzK
 535GuEBTzAvBbuwsqFuYMnCMo4yoJV0BAIUv1FdCjeGTbuW+deQa1Vyc6Rz9JQcdiJyv
 Fbmw==
X-Gm-Message-State: AOAM532iCpswtx2AXDb1Zey8mIK9UAip4X5y1At6RYtFS4uu2SCyAvQ8
 lOqzgjjmcr5fvvyy1quB6CE=
X-Google-Smtp-Source: ABdhPJxpmKhVqceIQWiXrGGdLvcaLXzXdCmFiC3E3r6puxs07HbTGNDN+PC6hnUY+qLrnezZ75rs9g==
X-Received: by 2002:a63:6d8a:: with SMTP id i132mr5567869pgc.82.1617240233466; 
 Wed, 31 Mar 2021 18:23:53 -0700 (PDT)
Received: from localhost ([2601:1c0:5200:a6:307:a401:7b76:c6e5])
 by smtp.gmail.com with ESMTPSA id ha8sm3270796pjb.6.2021.03.31.18.23.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 18:23:52 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 31 Mar 2021 18:27:17 -0700
Message-Id: <20210401012722.527712-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210331221630.488498-1-robdclark@gmail.com>
References: <20210331221630.488498-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Clark <robdclark@chromium.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 "Kristian H. Kristensen" <hoegsberg@google.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: [Linaro-mm-sig] [PATCH v2 0/4] drm/msm: Shrinker (and related) fixes
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

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgoKSSd2ZSBiZWVuIHNwZW5k
aW5nIHNvbWUgdGltZSBsb29raW5nIGludG8gaG93IHRoaW5ncyBiZWhhdmUgdW5kZXIgaGlnaApt
ZW1vcnkgcHJlc3N1cmUuICBUaGUgZmlyc3QgcGF0Y2ggaXMgYSByYW5kb20gY2xlYW51cCBJIG5v
dGljZWQgYWxvbmcKdGhlIHdheS4gIFRoZSBzZWNvbmQgaW1wcm92ZXMgdGhlIHNpdHVhdGlvbiBz
aWduaWZpY2FudGx5IHdoZW4gd2UgYXJlCmdldHRpbmcgc2hyaW5rZXIgY2FsbGVkIGZyb20gbWFu
eSB0aHJlYWRzIGluIHBhcmFsbGVsLiAgQW5kIHRoZSBsYXN0CnR3byBhcmUgJGRlYnVnZnMvZ2Vt
IGZpeGVzIEkgbmVlZGVkIHNvIEkgY291bGQgbW9uaXRvciB0aGUgc3RhdGUgb2YgR0VNCm9iamVj
dHMgKGllLiBob3cgbWFueSBhcmUgYWN0aXZlL3B1cmdhYmxlL3B1cmdlZCkgd2hpbGUgdHJpZ2dl
cmluZyBoaWdoCm1lbW9yeSBwcmVzc3VyZS4KCldlIGNvdWxkIHByb2JhYmx5IGdvIGEgYml0IGZ1
cnRoZXIgd2l0aCBkcm9wcGluZyB0aGUgbW1fbG9jayBpbiB0aGUKc2hyaW5rZXItPnNjYW4oKSBs
b29wLCBidXQgdGhpcyBpcyBhbHJlYWR5IGEgcHJldHR5IGJpZyBpbXByb3ZlbWVudC4KVGhlIG5l
eHQgc3RlcCBpcyBwcm9iYWJseSBhY3R1YWxseSB0byBhZGQgc3VwcG9ydCB0byB1bnBpbi9ldmlj
dAppbmFjdGl2ZSBvYmplY3RzLiAgKFdlIGFyZSBwYXJ0IHdheSB0aGVyZSBzaW5jZSB3ZSBoYXZl
IGFscmVhZHkgZGUtCmNvdXBsZWQgdGhlIGlvdmEgbGlmZXRpbWUgZnJvbSB0aGUgcGFnZXMgbGlm
ZXRpbWUsIGJ1dCB0aGVyZSBhcmUgYQpmZXcgc2hhcnAgY29ybmVycyB0byB3b3JrIHRocm91Z2gu
KQoKUm9iIENsYXJrICg0KToKICBkcm0vbXNtOiBSZW1vdmUgdW51c2VkIGZyZWVkIGxsaXN0IG5v
ZGUKICBkcm0vbXNtOiBBdm9pZCBtdXRleCBpbiBzaHJpbmtlcl9jb3VudCgpCiAgZHJtL21zbTog
Rml4IGRlYnVnZnMgZGVhZGxvY2sKICBkcm0vbXNtOiBJbXByb3ZlZCBkZWJ1Z2ZzIGdlbSBzdGF0
cwoKIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2RlYnVnZnMuYyAgICAgIHwgMTQgKystLS0KIGRy
aXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5jICAgICAgICAgIHwgIDQgKysKIGRyaXZlcnMvZ3B1
L2RybS9tc20vbXNtX2Rydi5oICAgICAgICAgIHwgMTUgKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0v
bXNtL21zbV9mYi5jICAgICAgICAgICB8ICAzICstCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9n
ZW0uYyAgICAgICAgICB8IDY1ICsrKysrKysrKysrKysrKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vbXNtL21zbV9nZW0uaCAgICAgICAgICB8IDcyICsrKysrKysrKysrKysrKysrKysrKysrLS0t
CiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc2hyaW5rZXIuYyB8IDI4ICsrKystLS0tLS0K
IDcgZmlsZXMgY2hhbmdlZCwgMTUwIGluc2VydGlvbnMoKyksIDUxIGRlbGV0aW9ucygtKQoKLS0g
CjIuMzAuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
