Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F23203919DF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:20:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11A6961401
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:20:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BC7F761468; Wed, 26 May 2021 14:19:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 26E3B6145D;
	Wed, 26 May 2021 14:19:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B73796115E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B1B9761161; Thu, 20 May 2021 12:03:24 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 8CBC961160
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:22 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id j14so15648776wrq.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oOCS+hcR746GCJgf+MTN84dmS4mfJygmI/El7Wrt4P4=;
 b=ZUD65uqjYlggL85gY9v2dGP0qaEAtUv9/6yMYvyc6T+yU5TXOVtoJYkrk15QeUqmTC
 cE3LQxHt/DtOkRgOgMIfh0MRQGRTTmnYhR4AgZwQQLc3SCNbDeioVcipg6covQsn4ynm
 +GCS3mvEDYAgBL4Hn/l6Ci0RwqwCRXM8oWyhnBZ5L+dwOj4c0mg9nNp9ETdiFOkR46P0
 IsDLYhphvMJegX3q3vjLGm6YIWJ0u3V0ktJfDTBfWhBv/yDqJIq2Yhd0k+sBC64x5JMb
 Ni05pKPh4xHIe1OK0JoD10mCgbve8icQ/yi0vvUP5sCREjDv861COjn5th/TxAaeEvYr
 /2qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oOCS+hcR746GCJgf+MTN84dmS4mfJygmI/El7Wrt4P4=;
 b=J+0TaFfqlY5D15KvTWmbd4dHzy8FqJrY9c6jl09WVPnDO7rDkkBfgHdOxZChceEIio
 AlHYejY+anik086htsmVryCBmL1TfoYUvIdD+5Gm4r25tlvHDndDKffpvXksjlgx0bfS
 C3r/Et+1c3koOhb2dYy/PcB7DTkDNPLL5iQerSX9ffDns9+NHFpuyM1omNITm33JBO6H
 qRe8S17/8Nuu5nr2Tc1+ewRlNRf/kYG0b0MR472ArdA5ELC1Io0bjts4AGZYEWAHb0Nq
 K+I1EpyX6GqVddKT5YJ7BVHF5P9OGc2ukT3fjHxNMc5StUep8KPJMjU0QasFr/+IAcxf
 2eIA==
X-Gm-Message-State: AOAM530Q/RawFUpPWEjB8cQOUtvo77mrWE/n/oWGsIbS0z4HezIBhs6W
 TcoSCB2zIja3GkDqqyZbkyZDGEU/
X-Google-Smtp-Source: ABdhPJyAItR0gb4XPRxdBIWogM59UBoe9P9QuJ8hc0mi4kUzQUx9yTK3mbjp5Cx9hjsoU+iBasFpHQ==
X-Received: by 2002:a05:6000:10d1:: with SMTP id
 b17mr3885211wrx.281.1621512201663; 
 Thu, 20 May 2021 05:03:21 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:21 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:39 +0100
Message-Id: <20210520120248.3464013-30-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 29/38] drm/radeon/r100: Realign doc header
 with function 'r100_cs_packet_parse_vline()'
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yMTAwLmM6MTQyMzogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlw
ZSBmb3IgcjEwMF9jc19wYWNrZXRfbmV4dF92bGluZSgpLiBQcm90b3R5cGUgd2FzIGZvciByMTAw
X2NzX3BhY2tldF9wYXJzZV92bGluZSgpIGluc3RlYWQKCkNjOiBBbGV4IERldWNoZXIgPGFsZXhh
bmRlci5kZXVjaGVyQGFtZC5jb20+CkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KQ2M6IERh
bmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vt
d2FsQGxpbmFyby5vcmc+CkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwu
b3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKU2lnbmVkLW9mZi1ieTogTGVl
IEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcmFkZW9u
L3IxMDAuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjEwMC5jIGIvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yMTAwLmMKaW5kZXggZmNmY2FlYzI1YTllZi4uM2M0ZTdjMTVmZDE1
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yMTAwLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yMTAwLmMKQEAgLTE0MDYsNyArMTQwNiw3IEBAIGludCByMTAwX2Nz
X3BhcnNlX3BhY2tldDAoc3RydWN0IHJhZGVvbl9jc19wYXJzZXIgKnAsCiB9CiAKIC8qKgotICog
cjEwMF9jc19wYWNrZXRfbmV4dF92bGluZSgpIC0gcGFyc2UgdXNlcnNwYWNlIFZMSU5FIHBhY2tl
dAorICogcjEwMF9jc19wYWNrZXRfcGFyc2VfdmxpbmUoKSAtIHBhcnNlIHVzZXJzcGFjZSBWTElO
RSBwYWNrZXQKICAqIEBwOgkJcGFyc2VyIHN0cnVjdHVyZSBob2xkaW5nIHBhcnNpbmcgY29udGV4
dC4KICAqCiAgKiBVc2Vyc3BhY2Ugc2VuZHMgYSBzcGVjaWFsIHNlcXVlbmNlIGZvciBWTElORSB3
YWl0cy4KLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
