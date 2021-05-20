Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D38213919D9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:19:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D749613C4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:19:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 30C7E61394; Wed, 26 May 2021 14:19:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85B7061454;
	Wed, 26 May 2021 14:19:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AA3A261178
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 82B6761160; Thu, 20 May 2021 12:03:11 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id 3879261174
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:09 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 z19-20020a7bc7d30000b029017521c1fb75so5283865wmk.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EkPRRoz7F84TTvDB6+0jP5Wh7M4ODElC4NQcMjBtFnE=;
 b=C7sgYTiANrC4NQXV+e5udHxsCPzVZnTdUONTGFy0elAjMgOr4a4/G1J+MxGPYWhgeG
 fKGfGMfyFUqP/jfVk/15fcyt5KfukAI0rN0/N2CeMI481eYGwA/ae2yAGB5r+KY8XBHU
 WS7b7Qm8Ple3GdMdCYcMp+hm6XJtj1QmCU9DJk9LqD58oSjspNVNWGzgWaitErSc4qWm
 NMIpVZzr8aIs+wkkMsvfH0oKbSph/Ecueoe50rcU9k85CjFRwvRRmZROlZdtpcEc19U9
 YWDrGUfx/MmdtGpYp/+KlYsxMkUJg5YvQj8KD4ya/3Nq0FnI2SucE+lTMo8DIpSGJcX6
 ygwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EkPRRoz7F84TTvDB6+0jP5Wh7M4ODElC4NQcMjBtFnE=;
 b=VDGvYJ3RT9eImS8q6sZcUVcp/Oi7GZ3JbLoV1moL9Yn8eSzclr8RmG8uV8AomrE6cD
 Mmygq1eLf+otLR4Ih/je9solCOBGiM1QfcqHnt0LBy3kR9GTqTgF9UvHfPEffTy5dKsb
 M2Khuepb//AXCwsJfHJEmH/LaCqGDNWmsWx1uiralbiwY1aC3tdreC08mIO+YV5h4hqs
 BnGc9m3jDz2xbK4RM6m+W77qBQY/y5F8wskvuVppO7Y4rH2LxadgLyRfWUTPqNCviwrD
 nCmqDRi3cd/y030hUbCr9uqny+TdZBCiEKr0loMqIw41zKgdTljyAhMbS6yERzoSuoaH
 0VBA==
X-Gm-Message-State: AOAM530gaKf2O3FXRvGPgfffjmvtQW5oDNu6Z0oKFXjp12lPCEvm0IGj
 W5Y9MsHheytQvjtITrpBOm99A7cd
X-Google-Smtp-Source: ABdhPJzPnAPqk77sjtNc+xUnzh/WodTD1UR6pw3gSJKCE5waqxLJcs6BuyWwb2EH/6hrtLLTYjuCKA==
X-Received: by 2002:a7b:c8ce:: with SMTP id f14mr3283573wml.81.1621512188364; 
 Thu, 20 May 2021 05:03:08 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:07 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:26 +0100
Message-Id: <20210520120248.3464013-17-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 16/38] drm/amd/amdgpu/si_dma: Fix some
 function name disparity
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
cy9ncHUvZHJtL2FtZC9hbWRncHUvc2lfZG1hLmM6MzIwOiB3YXJuaW5nOiBleHBlY3RpbmcgcHJv
dG90eXBlIGZvciBjaWtfZG1hX3ZtX2NvcHlfcHRlKCkuIFByb3RvdHlwZSB3YXMgZm9yIHNpX2Rt
YV92bV9jb3B5X3B0ZSgpIGluc3RlYWQKIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NpX2Rt
YS5jOjQxMjogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlwZSBmb3Igc2lfZG1hX3BhZF9pYigp
LiBQcm90b3R5cGUgd2FzIGZvciBzaV9kbWFfcmluZ19wYWRfaWIoKSBpbnN0ZWFkCiBkcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9zaV9kbWEuYzo0MjU6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90
b3R5cGUgZm9yIGNpa19zZG1hX3JpbmdfZW1pdF9waXBlbGluZV9zeW5jKCkuIFByb3RvdHlwZSB3
YXMgZm9yIHNpX2RtYV9yaW5nX2VtaXRfcGlwZWxpbmVfc3luYygpIGluc3RlYWQKCkNjOiBBbGV4
IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+CkNjOiAiQ2hyaXN0aWFuIEvDtm5p
ZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBs
aW51eC5pZT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IFN1bWl0IFNl
bXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGludXgtbWVk
aWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKU2ln
bmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9zaV9kbWEuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L3NpX2RtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2lf
ZG1hLmMKaW5kZXggY2I3MDNlMzA3MjM4ZC4uMTk1YjQ1YmNiOGFkOSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2lfZG1hLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvc2lfZG1hLmMKQEAgLTMwNSw3ICszMDUsNyBAQCBzdGF0aWMgaW50IHNpX2RtYV9y
aW5nX3Rlc3RfaWIoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLCBsb25nIHRpbWVvdXQpCiB9CiAK
IC8qKgotICogY2lrX2RtYV92bV9jb3B5X3B0ZSAtIHVwZGF0ZSBQVEVzIGJ5IGNvcHlpbmcgdGhl
bSBmcm9tIHRoZSBHQVJUCisgKiBzaV9kbWFfdm1fY29weV9wdGUgLSB1cGRhdGUgUFRFcyBieSBj
b3B5aW5nIHRoZW0gZnJvbSB0aGUgR0FSVAogICoKICAqIEBpYjogaW5kaXJlY3QgYnVmZmVyIHRv
IGZpbGwgd2l0aCBjb21tYW5kcwogICogQHBlOiBhZGRyIG9mIHRoZSBwYWdlIGVudHJ5CkBAIC00
MDIsNyArNDAyLDcgQEAgc3RhdGljIHZvaWQgc2lfZG1hX3ZtX3NldF9wdGVfcGRlKHN0cnVjdCBh
bWRncHVfaWIgKmliLAogfQogCiAvKioKLSAqIHNpX2RtYV9wYWRfaWIgLSBwYWQgdGhlIElCIHRv
IHRoZSByZXF1aXJlZCBudW1iZXIgb2YgZHcKKyAqIHNpX2RtYV9yaW5nX3BhZF9pYiAtIHBhZCB0
aGUgSUIgdG8gdGhlIHJlcXVpcmVkIG51bWJlciBvZiBkdwogICoKICAqIEByaW5nOiBhbWRncHVf
cmluZyBwb2ludGVyCiAgKiBAaWI6IGluZGlyZWN0IGJ1ZmZlciB0byBmaWxsIHdpdGggcGFkZGlu
ZwpAQCAtNDE1LDcgKzQxNSw3IEBAIHN0YXRpYyB2b2lkIHNpX2RtYV9yaW5nX3BhZF9pYihzdHJ1
Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIHN0cnVjdCBhbWRncHVfaWIgKmliKQogfQogCiAvKioKLSAq
IGNpa19zZG1hX3JpbmdfZW1pdF9waXBlbGluZV9zeW5jIC0gc3luYyB0aGUgcGlwZWxpbmUKKyAq
IHNpX2RtYV9yaW5nX2VtaXRfcGlwZWxpbmVfc3luYyAtIHN5bmMgdGhlIHBpcGVsaW5lCiAgKgog
ICogQHJpbmc6IGFtZGdwdV9yaW5nIHBvaW50ZXIKICAqCi0tIAoyLjMxLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
