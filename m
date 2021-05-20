Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D914D3919D8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:19:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DCDBA61394
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:19:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6CBE86139F; Wed, 26 May 2021 14:19:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CA4560EA2;
	Wed, 26 May 2021 14:19:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4DBEC605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4C0FE61178; Thu, 20 May 2021 12:03:09 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by lists.linaro.org (Postfix) with ESMTPS id 33119605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:07 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id o127so9018781wmo.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OmMgm22TVdmn0YlU70PwNW8OaCfk/LhHrn8mYGM1ILk=;
 b=QD/KEVmze2nJBsl72X+9/4makCpNLgnhq9kHYQtB0j4vPW1YZXrU1khxF3fGuZU0h+
 ZPx91P2Ne+MJofYJYv5eKK7Yft2hMjg3D7P89z+qpLWEu9oeG6N31skJJsST4qDrmNuL
 ySurx8C8e78/4JZjFHBzSggFMTGDA1MPBXw05kOtgeBccYfmGiCg/i8VWeoCenhST8s3
 okGcBzBiUXfR8+BF1kkNK6mjF301dRzRn875g/Zz6dy9mlYT5wmxs++2gIlYPo+WBEGW
 VwU0WXfkvJCZBLqh2oTsGKIhfsdLjBIrutsQI0UPvKw8CSfIyIxy42lR1AHIt+/e9wWS
 nUuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OmMgm22TVdmn0YlU70PwNW8OaCfk/LhHrn8mYGM1ILk=;
 b=fWtUgM0BEnqn6p70X0W4un+VxK1ARhW8lJRD1JjoUBLjNnCBJaz9Muhuk+zY8SZGNX
 1J1JE6W91fHYcPTCXImN3UTHIrhpyRa0Cmt/SMVZltFz730UZppSgqY+4zCP9OPJKaYU
 6LNFqttfFFMsB2bDr2nut89VB+LpA94IBO9FQJ4MGGRTeZJ37tdYkR0hVojAVgHj9elX
 Plk4zktzWCzuGkNBRqSvIASLAlCyUCtATIHHkC2r3TX1f+GoRl0kDnW5f3v5qUrDldmm
 oqaC8pfrxiY7RmirveeWMUDgteT0FnDb+awB0oKgTq0JynwRpUV06wJAVAzhJayJKeRb
 ILyg==
X-Gm-Message-State: AOAM5300ts+AomESsM6ExrfEl/3fgpp14AGDp4F6N8g1o2VBX8nCzHqi
 9y3fIGu9JdXLVcy66/rG9AcIFwLR
X-Google-Smtp-Source: ABdhPJxIRwowWq6Q6Jk0qbvu6pd7yWq+Mmva8O37/LRH9s85uRpcjtEb6krZZtsukcUmk7nXDt3tAw==
X-Received: by 2002:a1c:bbc3:: with SMTP id l186mr3700393wmf.38.1621512186295; 
 Thu, 20 May 2021 05:03:06 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:05 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:24 +0100
Message-Id: <20210520120248.3464013-15-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 14/38] drm/amd/amdgpu/gfx_v7_0: Repair
 function names in the documentation
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
cy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y3XzAuYzoyMTI2OiB3YXJuaW5nOiBleHBlY3Rpbmcg
cHJvdG90eXBlIGZvciBnZnhfdjdfMF9yaW5nX2VtaXRfaGRwKCkuIFByb3RvdHlwZSB3YXMgZm9y
IGdmeF92N18wX3JpbmdfZW1pdF9oZHBfZmx1c2goKSBpbnN0ZWFkCiBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9nZnhfdjdfMC5jOjIyNjI6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUg
Zm9yIGdmeF92N18wX3JpbmdfZW1pdF9pYigpLiBQcm90b3R5cGUgd2FzIGZvciBnZnhfdjdfMF9y
aW5nX2VtaXRfaWJfZ2Z4KCkgaW5zdGVhZAogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4
X3Y3XzAuYzozMjA3OiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBlIGZvciBnZnhfdjdfMF9y
aW5nX2VtaXRfdm1fZmx1c2goKS4gUHJvdG90eXBlIHdhcyBmb3IgZ2Z4X3Y3XzBfcmluZ19lbWl0
X3BpcGVsaW5lX3N5bmMoKSBpbnN0ZWFkCgpDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1
Y2hlckBhbWQuY29tPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+CkNjOiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWxAZmZ3bGwuY2g+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5h
cm8ub3JnPgpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwpDYzog
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8
bGVlLmpvbmVzQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4
X3Y3XzAuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92
N18wLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjdfMC5jCmluZGV4IGMzNWZk
ZDJlZjJkNGQuLjY4NTIxMmMzZGRhZTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2dmeF92N18wLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y3
XzAuYwpAQCAtMjExNiw3ICsyMTE2LDcgQEAgc3RhdGljIGludCBnZnhfdjdfMF9yaW5nX3Rlc3Rf
cmluZyhzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcpCiB9CiAKIC8qKgotICogZ2Z4X3Y3XzBfcmlu
Z19lbWl0X2hkcCAtIGVtaXQgYW4gaGRwIGZsdXNoIG9uIHRoZSBjcAorICogZ2Z4X3Y3XzBfcmlu
Z19lbWl0X2hkcF9mbHVzaCAtIGVtaXQgYW4gaGRwIGZsdXNoIG9uIHRoZSBjcAogICoKICAqIEBy
aW5nOiBhbWRncHVfcmluZyBzdHJ1Y3R1cmUgaG9sZGluZyByaW5nIGluZm9ybWF0aW9uCiAgKgpA
QCAtMjI0Miw3ICsyMjQyLDcgQEAgc3RhdGljIHZvaWQgZ2Z4X3Y3XzBfcmluZ19lbWl0X2ZlbmNl
X2NvbXB1dGUoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLAogICogSUIgc3R1ZmYKICAqLwogLyoq
Ci0gKiBnZnhfdjdfMF9yaW5nX2VtaXRfaWIgLSBlbWl0IGFuIElCIChJbmRpcmVjdCBCdWZmZXIp
IG9uIHRoZSByaW5nCisgKiBnZnhfdjdfMF9yaW5nX2VtaXRfaWJfZ2Z4IC0gZW1pdCBhbiBJQiAo
SW5kaXJlY3QgQnVmZmVyKSBvbiB0aGUgcmluZwogICoKICAqIEByaW5nOiBhbWRncHVfcmluZyBz
dHJ1Y3R1cmUgaG9sZGluZyByaW5nIGluZm9ybWF0aW9uCiAgKiBAam9iOiBqb2IgdG8gcmV0cmll
dmUgdm1pZCBmcm9tCkBAIC0zMTk2LDcgKzMxOTYsNyBAQCBzdGF0aWMgaW50IGdmeF92N18wX2Nw
X3Jlc3VtZShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldikKIH0KIAogLyoqCi0gKiBnZnhfdjdf
MF9yaW5nX2VtaXRfdm1fZmx1c2ggLSBjaWsgdm0gZmx1c2ggdXNpbmcgdGhlIENQCisgKiBnZnhf
djdfMF9yaW5nX2VtaXRfcGlwZWxpbmVfc3luYyAtIGNpayB2bSBmbHVzaCB1c2luZyB0aGUgQ1AK
ICAqCiAgKiBAcmluZzogdGhlIHJpbmcgdG8gZW1pdCB0aGUgY29tbWFuZHMgdG8KICAqCi0tIAoy
LjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
