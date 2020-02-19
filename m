Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BDE1644F4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Feb 2020 14:04:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14522619E4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Feb 2020 13:04:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 084C6619E5; Wed, 19 Feb 2020 13:04:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPOOFED_FREEMAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 17F79619CD;
	Wed, 19 Feb 2020 12:59:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D306B618D2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 12:59:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BE36961932; Wed, 19 Feb 2020 12:59:21 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 1858C61932
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 12:59:17 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id r11so383697wrq.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 04:59:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hCeM9CJ6pzmi1o3KK+XpvWx7SxeTxw84lBGmVzLUTd8=;
 b=k+JQfCpYlBnJMn4okiybXc4d/kv5TELxTTEI8ZrFIjO3fknj93+5DxKRmXDlbl7DZx
 cQ7otYmALdGmtjoaOBfZza9XTNOpX75MBVBkbrGj6MkqRhMbCTD4LVAAl5TSNNpJLcSW
 YAPQieTi7fo/PTOuXLUqeIpSAYl7bc/kI0HLMacigUbqpGr7T176Wa9PtpH3GPhhJA56
 1zZTTIoSM/nEZShxYD3GBimId6mFvEganHDD5r4WMUMWrtkvwZo5skYqkxn4FSGea4dQ
 VGdZJqXgcCKSGhQeYS8QB3Ca08/Bq6kzqwqzXV4rlHW0Thzfw4YybMfYxS8rD1MXcLH6
 puUA==
X-Gm-Message-State: APjAAAVEWytDAlw/ENsT1czjWMTgFNP7pQxfyUKmnNuGI1GkRbwbfM8b
 YgSIK9/0a74RBGbFbK9i0dY=
X-Google-Smtp-Source: APXvYqySOgedUHE0WIseUqC6YRH4GURoV+8ztV20bSWnbuN2/ag6oz0YQs44nziyGSFcOqFV5ziYRA==
X-Received: by 2002:adf:dfcc:: with SMTP id q12mr35180842wrn.171.1582117156160; 
 Wed, 19 Feb 2020 04:59:16 -0800 (PST)
Received: from abel.fritz.box ([2a02:908:1252:fb60:90ea:9d7:18a3:895e])
 by smtp.gmail.com with ESMTPSA id h2sm3079024wrt.45.2020.02.19.04.59.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 04:59:15 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Date: Wed, 19 Feb 2020 13:59:09 +0100
Message-Id: <20200219125910.89147-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219125910.89147-1-christian.koenig@amd.com>
References: <20200219125910.89147-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 6/7] dma-buf: drop dynamic_mapping flag
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

SW5zdGVhZCB1c2UgdGhlIHBpbigpIGNhbGxiYWNrIHRvIGRldGVjdCBkeW5hbWljIERNQS1idWYg
aGFuZGxpbmcuClNpbmNlIGFtZGdwdSBpcyBub3cgbWlncmF0ZWQgaXQgZG9lc24ndCBtYWtlIG11
Y2ggc2Vuc2UgdG8ga2VlcAp0aGUgZXh0cmEgZmxhZy4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0KIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgfCAgMSAtCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYu
aCAgICAgICAgICAgICAgICAgICAgIHwgMjEgKysrKystLS0tLS0tLS0tLS0tLS0tCiAzIGZpbGVz
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKaW5k
ZXggNWYxMGQxOTI5NDc2Li42ZDBhODJkMWIyM2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAtNTI0LDExICs1
MjQsMTAgQEAgc3RydWN0IGRtYV9idWYgKmRtYV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdCBkbWFf
YnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbykKIAl9CiAKIAlpZiAoV0FSTl9PTihleHBfaW5mby0+
b3BzLT5jYWNoZV9zZ3RfbWFwcGluZyAmJgotCQkgICAgZXhwX2luZm8tPm9wcy0+ZHluYW1pY19t
YXBwaW5nKSkKKwkJICAgIChleHBfaW5mby0+b3BzLT5waW4gfHwgZXhwX2luZm8tPm9wcy0+dW5w
aW4pKSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CiAKLQlpZiAoV0FSTl9PTighZXhwX2lu
Zm8tPm9wcy0+ZHluYW1pY19tYXBwaW5nICYmCi0JCSAgICAoZXhwX2luZm8tPm9wcy0+cGluIHx8
IGV4cF9pbmZvLT5vcHMtPnVucGluKSkpCisJaWYgKFdBUk5fT04oIWV4cF9pbmZvLT5vcHMtPnBp
biAhPSAhZXhwX2luZm8tPm9wcy0+dW5waW4pKQogCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsK
IAogCWlmICghdHJ5X21vZHVsZV9nZXQoZXhwX2luZm8tPm93bmVyKSkKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCmluZGV4IDFhMDQwY2NmNjFiZi4uZmZlYjIw
ZjExYzA3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1h
X2J1Zi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMK
QEAgLTM2NCw3ICszNjQsNiBAQCBzdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX2JlZ2luX2NwdV9h
Y2Nlc3Moc3RydWN0IGRtYV9idWYgKmRtYV9idWYsCiB9CiAKIGNvbnN0IHN0cnVjdCBkbWFfYnVm
X29wcyBhbWRncHVfZG1hYnVmX29wcyA9IHsKLQkuZHluYW1pY19tYXBwaW5nID0gdHJ1ZSwKIAku
YXR0YWNoID0gYW1kZ3B1X2RtYV9idWZfYXR0YWNoLAogCS5kZXRhY2ggPSBhbWRncHVfZG1hX2J1
Zl9kZXRhY2gsCiAJLnBpbiA9IGFtZGdwdV9kbWFfYnVmX3BpbiwKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKaW5kZXggYjM4Y2Vh
MjQwYjY3Li4xYWRlNDg2ZmMyYmIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
CisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCkBAIC00MiwxOCArNDIsNiBAQCBzdHJ1Y3Qg
ZG1hX2J1Zl9vcHMgewogCSAgKi8KIAlib29sIGNhY2hlX3NndF9tYXBwaW5nOwogCi0JLyoqCi0J
ICogQGR5bmFtaWNfbWFwcGluZzoKLQkgKgotCSAqIElmIHRydWUgdGhlIGZyYW1ld29yayBtYWtl
cyBzdXJlIHRoYXQgdGhlIG1hcC91bm1hcF9kbWFfYnVmCi0JICogY2FsbGJhY2tzIGFyZSBhbHdh
eXMgY2FsbGVkIHdpdGggdGhlIGRtYV9yZXN2IG9iamVjdCBsb2NrZWQuCi0JICoKLQkgKiBJZiBm
YWxzZSB0aGUgZnJhbWV3b3JrIG1ha2VzIHN1cmUgdGhhdCB0aGUgbWFwL3VubWFwX2RtYV9idWYK
LQkgKiBjYWxsYmFja3MgYXJlIGFsd2F5cyBjYWxsZWQgd2l0aG91dCB0aGUgZG1hX3Jlc3Ygb2Jq
ZWN0IGxvY2tlZC4KLQkgKiBNdXR1YWwgZXhjbHVzaXZlIHdpdGggQGNhY2hlX3NndF9tYXBwaW5n
LgotCSAqLwotCWJvb2wgZHluYW1pY19tYXBwaW5nOwotCiAJLyoqCiAJICogQGF0dGFjaDoKIAkg
KgpAQCAtOTksNyArODcsOCBAQCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgewogCSAqIFRoaXMgaXMgY2Fs
bGVkIGJ5IGRtYV9idWZfcGluIGFuZCBsZXRzIHRoZSBleHBvcnRlciBrbm93IHRoYXQgdGhlCiAJ
ICogRE1BLWJ1ZiBjYW4ndCBiZSBtb3ZlZCBhbnkgbW9yZS4KIAkgKgotCSAqIFRoaXMgaXMgY2Fs
bGVkIHdpdGggdGhlIGRtYWJ1Zi0+cmVzdiBvYmplY3QgbG9ja2VkLgorCSAqIFRoaXMgaXMgY2Fs
bGVkIHdpdGggdGhlIGRtYWJ1Zi0+cmVzdiBvYmplY3QgbG9ja2VkIGFuZCBpcyBtdXR1YWwKKwkg
KiBleGNsdXNpdmUgd2l0aCBAY2FjaGVfc2d0X21hcHBpbmcuCiAJICoKIAkgKiBUaGlzIGNhbGxi
YWNrIGlzIG9wdGlvbmFsIGFuZCBzaG91bGQgb25seSBiZSB1c2VkIGluIGxpbWl0ZWQgdXNlCiAJ
ICogY2FzZXMgbGlrZSBzY2Fub3V0IGFuZCBub3QgZm9yIHRlbXBvcmFyeSBwaW4gb3BlcmF0aW9u
cy4KQEAgLTExNiw3ICsxMDUsOCBAQCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgewogCSAqIFRoaXMgaXMg
Y2FsbGVkIGJ5IGRtYV9idWZfdW5waW4gYW5kIGxldHMgdGhlIGV4cG9ydGVyIGtub3cgdGhhdCB0
aGUKIAkgKiBETUEtYnVmIGNhbiBiZSBtb3ZlZCBhZ2Fpbi4KIAkgKgotCSAqIFRoaXMgaXMgY2Fs
bGVkIHdpdGggdGhlIGRtYWJ1Zi0+cmVzdiBvYmplY3QgbG9ja2VkLgorCSAqIFRoaXMgaXMgY2Fs
bGVkIHdpdGggdGhlIGRtYWJ1Zi0+cmVzdiBvYmplY3QgbG9ja2VkIGFuZCBpcyBtdXR1YWwKKwkg
KiBleGNsdXNpdmUgd2l0aCBAY2FjaGVfc2d0X21hcHBpbmcuCiAJICoKIAkgKiBUaGlzIGNhbGxi
YWNrIGlzIG9wdGlvbmFsLgogCSAqLwpAQCAtNDU1LDggKzQ0NSw3IEBAIHN0YXRpYyBpbmxpbmUg
dm9pZCBnZXRfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQogICovCiBzdGF0aWMgaW5s
aW5lIGJvb2wgZG1hX2J1Zl9pc19keW5hbWljKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpCiB7Ci0J
LyogVE9ETzogc3dpdGNoIHRvIHVzaW5nIHBpbi91bnBpbiBmdW5jdGlvbnMgYXMgaW5kaWNhdG9y
LiAqLwotCXJldHVybiBkbWFidWYtPm9wcy0+ZHluYW1pY19tYXBwaW5nOworCXJldHVybiAhIWRt
YWJ1Zi0+b3BzLT5waW47CiB9CiAKIC8qKgotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
