Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B58303919D7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:19:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A89C1604FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:19:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1E5216114E; Wed, 26 May 2021 14:19:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE017604F1;
	Wed, 26 May 2021 14:19:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5590A607B2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 515C761160; Thu, 20 May 2021 12:03:08 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 356F56115E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:06 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id y14so15302419wrm.13
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p87lVshS5WtAkP+vwHETLCg2+KWBSmqiA1YnmqxNMnI=;
 b=a0NIQqA5rLn8/zDIH1ZHgTKtjrdQNFOqYKVUhlTWUmu+HMX/QdYMhzdfw1vnVRI6h9
 5ftpgP6sU1hD4Yn0LY+AZQcGCSfvqqS1Z0rNcyjthxY2amFnTWc+tBhkI+IXvW6ISVPy
 Znuiyk6IycvT5V+n60HIOQd+Agl7RJ2VvoUzoTkPlhNskqEB+uSoeWDAft89rOUwhqOn
 GJskOcGB3CvTGt/Qy4NqIM/pw4JTKpD6N1mdJVmotEQdhStQMDA1j/V3xJBruo5ull0c
 96oVQpgw0QpTNeNkj73P8Zfrg3kq8efATw2NO6gQqRt5Uxk5RXecfUzUiHsY24AKuzno
 pMBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p87lVshS5WtAkP+vwHETLCg2+KWBSmqiA1YnmqxNMnI=;
 b=SXPBDUvnPyLU2nKhPZLYVLvihAynMcBespGvFJVmgNya3TOh2puOC1vjH5Wd7dnQuE
 MpL3JOiBczGxRjDqOd42FAvudW0C/g+vthrQx977FcGWxiqnTFd/oTz6PIyOVfJWr9e2
 V5+X1n11sdzHtBHmxNvYpJb2+DwBcAGY93W6czhcSQj6eehu3YqV/SYTqUfiEbTYJZtH
 dq08OdlL4JlTpguaoFu8eVvCW+RZxLQpgT7A2b7k60vYiazEJeA+MPAPWijpihwUJ2f8
 uPxM9GkMKdXGvBhagF8zVFFck3AAgLS4gh7rxR5pGjQhC3yqJ/5n1ayycPT6VYPegeRc
 5JNg==
X-Gm-Message-State: AOAM533mtVblFxFw/gu46FlPygWtnxiBhaeGmNMgKORVCYOVf2UCw0rm
 X6Ic7w3CeQX294O7VbsFwEDGcbs+
X-Google-Smtp-Source: ABdhPJztEhcLl1ZB7W0IJsYbUWN1YgmHDJ7/kY6TYSk37pdkh/b5zgKfJXBzKdNZaNHzScPv6WULWQ==
X-Received: by 2002:adf:f80f:: with SMTP id s15mr3888694wrp.341.1621512185252; 
 Thu, 20 May 2021 05:03:05 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:04 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:23 +0100
Message-Id: <20210520120248.3464013-14-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 13/38] drm/amd/amdgpu/cik_sdma: Fix a few
 incorrectly named functions
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
 Evan Quan <evan.quan@amd.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvY2lrX3NkbWEuYzo3MzU6IHdhcm5pbmc6IGV4cGVjdGluZyBw
cm90b3R5cGUgZm9yIGNpa19zZG1hX3ZtX2NvcHlfcGFnZXMoKS4gUHJvdG90eXBlIHdhcyBmb3Ig
Y2lrX3NkbWFfdm1fY29weV9wdGUoKSBpbnN0ZWFkCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9jaWtfc2RtYS5jOjc2Mjogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlwZSBmb3IgY2lrX3Nk
bWFfdm1fd3JpdGVfcGFnZXMoKS4gUHJvdG90eXBlIHdhcyBmb3IgY2lrX3NkbWFfdm1fd3JpdGVf
cHRlKCkgaW5zdGVhZAogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvY2lrX3NkbWEuYzo3OTI6
IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIGNpa19zZG1hX3ZtX3NldF9wYWdlcygp
LiBQcm90b3R5cGUgd2FzIGZvciBjaWtfc2RtYV92bV9zZXRfcHRlX3BkZSgpIGluc3RlYWQKIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Npa19zZG1hLmM6ODE0OiB3YXJuaW5nOiBleHBlY3Rp
bmcgcHJvdG90eXBlIGZvciBjaWtfc2RtYV92bV9wYWRfaWIoKS4gUHJvdG90eXBlIHdhcyBmb3Ig
Y2lrX3NkbWFfcmluZ19wYWRfaWIoKSBpbnN0ZWFkCgpDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5k
ZXIuZGV1Y2hlckBhbWQuY29tPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+CkNjOiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdh
bEBsaW5hcm8ub3JnPgpDYzogRXZhbiBRdWFuIDxldmFuLnF1YW5AYW1kLmNvbT4KQ2M6IGFtZC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8u
b3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Npa19zZG1hLmMgfCA4ICsrKyst
LS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Npa19zZG1hLmMgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9jaWtfc2RtYS5jCmluZGV4IGM0YmI4ZWVkMjQ2ZDYuLmM4ZWJk
MTA4NTQ4ZDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Npa19zZG1h
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvY2lrX3NkbWEuYwpAQCAtNzIwLDcg
KzcyMCw3IEBAIHN0YXRpYyBpbnQgY2lrX3NkbWFfcmluZ190ZXN0X2liKHN0cnVjdCBhbWRncHVf
cmluZyAqcmluZywgbG9uZyB0aW1lb3V0KQogfQogCiAvKioKLSAqIGNpa19zZG1hX3ZtX2NvcHlf
cGFnZXMgLSB1cGRhdGUgUFRFcyBieSBjb3B5aW5nIHRoZW0gZnJvbSB0aGUgR0FSVAorICogY2lr
X3NkbWFfdm1fY29weV9wdGUgLSB1cGRhdGUgUFRFcyBieSBjb3B5aW5nIHRoZW0gZnJvbSB0aGUg
R0FSVAogICoKICAqIEBpYjogaW5kaXJlY3QgYnVmZmVyIHRvIGZpbGwgd2l0aCBjb21tYW5kcwog
ICogQHBlOiBhZGRyIG9mIHRoZSBwYWdlIGVudHJ5CkBAIC03NDYsNyArNzQ2LDcgQEAgc3RhdGlj
IHZvaWQgY2lrX3NkbWFfdm1fY29weV9wdGUoc3RydWN0IGFtZGdwdV9pYiAqaWIsCiB9CiAKIC8q
KgotICogY2lrX3NkbWFfdm1fd3JpdGVfcGFnZXMgLSB1cGRhdGUgUFRFcyBieSB3cml0aW5nIHRo
ZW0gbWFudWFsbHkKKyAqIGNpa19zZG1hX3ZtX3dyaXRlX3B0ZSAtIHVwZGF0ZSBQVEVzIGJ5IHdy
aXRpbmcgdGhlbSBtYW51YWxseQogICoKICAqIEBpYjogaW5kaXJlY3QgYnVmZmVyIHRvIGZpbGwg
d2l0aCBjb21tYW5kcwogICogQHBlOiBhZGRyIG9mIHRoZSBwYWdlIGVudHJ5CkBAIC03NzUsNyAr
Nzc1LDcgQEAgc3RhdGljIHZvaWQgY2lrX3NkbWFfdm1fd3JpdGVfcHRlKHN0cnVjdCBhbWRncHVf
aWIgKmliLCB1aW50NjRfdCBwZSwKIH0KIAogLyoqCi0gKiBjaWtfc2RtYV92bV9zZXRfcGFnZXMg
LSB1cGRhdGUgdGhlIHBhZ2UgdGFibGVzIHVzaW5nIHNETUEKKyAqIGNpa19zZG1hX3ZtX3NldF9w
dGVfcGRlIC0gdXBkYXRlIHRoZSBwYWdlIHRhYmxlcyB1c2luZyBzRE1BCiAgKgogICogQGliOiBp
bmRpcmVjdCBidWZmZXIgdG8gZmlsbCB3aXRoIGNvbW1hbmRzCiAgKiBAcGU6IGFkZHIgb2YgdGhl
IHBhZ2UgZW50cnkKQEAgLTgwNCw3ICs4MDQsNyBAQCBzdGF0aWMgdm9pZCBjaWtfc2RtYV92bV9z
ZXRfcHRlX3BkZShzdHJ1Y3QgYW1kZ3B1X2liICppYiwgdWludDY0X3QgcGUsCiB9CiAKIC8qKgot
ICogY2lrX3NkbWFfdm1fcGFkX2liIC0gcGFkIHRoZSBJQiB0byB0aGUgcmVxdWlyZWQgbnVtYmVy
IG9mIGR3CisgKiBjaWtfc2RtYV9yaW5nX3BhZF9pYiAtIHBhZCB0aGUgSUIgdG8gdGhlIHJlcXVp
cmVkIG51bWJlciBvZiBkdwogICoKICAqIEByaW5nOiBhbWRncHVfcmluZyBzdHJ1Y3R1cmUgaG9s
ZGluZyByaW5nIGluZm9ybWF0aW9uCiAgKiBAaWI6IGluZGlyZWN0IGJ1ZmZlciB0byBmaWxsIHdp
dGggcGFkZGluZwotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
