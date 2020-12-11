Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 051442D7A5D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Dec 2020 17:01:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32F2666722
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Dec 2020 16:01:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2637C66727; Fri, 11 Dec 2020 16:01:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F14786671C;
	Fri, 11 Dec 2020 15:59:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 465F16670E
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 15:58:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 34E2166714; Fri, 11 Dec 2020 15:58:58 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id E51A76670E
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 15:58:53 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id y23so9073874wmi.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 07:58:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=243Gvg3EOSmTTvBu4o4RKVn/UX2SWUWrVcKX752oh38=;
 b=aIwcSjyXfjzblUEtKqp/hVaXI7XJpWXJCnq+SUZCs2eQy29jyikASIxjJY99/cbxDo
 RFSxYiw/8XX5X+lW2l/mPR/fEtGweyjF8invXPGcJYOQ/6qaj5uhPFNagGFLkDld1Out
 jgClSlGUo90Lc7ExUM/x25A+ME0IT/oJPtaqdk4Vmo6ba5rEaZ9PkEVGKX89O8D6FZg9
 ps8V6iGBmy5fJSjg2WlsobJ/36cpE5Ven6iKOsbhAjIInQnPU9/00OHwhwdp9XYJpfv4
 hEjxnYu82L/4FytZh66OP4czcMQBeGnvBWjD6hCENA6349CwYv2nUzqXY6ABZcumuaBu
 RPDg==
X-Gm-Message-State: AOAM531Op1OsbzYsOn42ItiXz479VG5WSTQKv8ayViY9G7+LN7z7Nux0
 YNE6x57twP0NkV2jOGYzTmP52A==
X-Google-Smtp-Source: ABdhPJyuJvI2Mjy8AtPGb0Iyw00NTdMFlmVvHC+yg+8Gjr8dEU+KJmhpBUiwqBVmfmlnpv1AVmn/+w==
X-Received: by 2002:a1c:4904:: with SMTP id w4mr13987630wma.140.1607702333034; 
 Fri, 11 Dec 2020 07:58:53 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z21sm14828241wmk.20.2020.12.11.07.58.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Dec 2020 07:58:52 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 11 Dec 2020 16:58:43 +0100
Message-Id: <20201211155843.3348718-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201211155843.3348718-1-daniel.vetter@ffwll.ch>
References: <20201211155843.3348718-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 4/4] dma-buf: doc polish for pin/unpin
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

TW90aXZhdGVkIGJ5IGEgZGlzY3Vzc2lvbiB3aXRoIENocmlzdGlhbiBhbmQgVGhvbWFzOiBUcnkg
dG8gdW50YW5nbGUgYQpiaXQgd2hhdCdzIHJlbGV2YW50IGZvciBpbXBvcnRlcnMgYW5kIHdoYXQn
cyByZWxldmFudCBmb3IgZXhwb3J0ZXJzLgoKQWxzbyBhZGQgYW4gYXNzZXJ0IHRoYXQgcmVhbGx5
IG9ubHkgZHluYW1pYyBpbXBvcnRlcnMgdXNlIHRoZSBhcGkKZnVuY3Rpb24sIGFueXRoaW5nIGVs
c2UgZG9lc24ndCBtYWtlIHNlbnNlLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5A
c3VzZS5kZT4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiAi
Q2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IGxpbnV4LW1l
ZGlhQHZnZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCi0t
LQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDE5ICsrKysrKysrKysrKysrKystLS0KIGlu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAgOCArKysrKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCAy
MSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCmluZGV4IDAwZDVhZmU5
MDRjYy4uMTA2NTU0NWU5Y2ExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
CisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKQEAgLTgwOSw5ICs4MDksMTUgQEAgRVhQ
T1JUX1NZTUJPTF9HUEwoZG1hX2J1Zl9kZXRhY2gpOwogCiAvKioKICAqIGRtYV9idWZfcGluIC0g
TG9jayBkb3duIHRoZSBETUEtYnVmCi0gKgogICogQGF0dGFjaDoJW2luXQlhdHRhY2htZW50IHdo
aWNoIHNob3VsZCBiZSBwaW5uZWQKICAqCisgKiBPbmx5IGR5bmFtaWMgaW1wb3J0ZXJzICh3aG8g
c2V0IHVwIEBhdHRhY2ggd2l0aCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKCkpIG1heQorICogY2Fs
bCB0aGlzLCBhbmQgb25seSBmb3IgbGltaXRlZCB1c2UgY2FzZXMgbGlrZSBzY2Fub3V0IGFuZCBu
b3QgZm9yIHRlbXBvcmFyeQorICogcGluIG9wZXJhdGlvbnMuIEl0IGlzIG5vdCBwZXJtaXR0ZWQg
dG8gYWxsb3cgdXNlcnNwYWNlIHRvIHBpbiBhcmJpdHJhcnkKKyAqIGFtb3VudHMgb2YgYnVmZmVy
cyB0aHJvdWdoIHRoaXMgaW50ZXJmYWNlLgorICoKKyAqIEJ1ZmZlcnMgbXVzdCBiZSB1bnBpbm5l
ZCBieSBjYWxsaW5nIGRtYV9idWZfdW5waW4oKS4KKyAqCiAgKiBSZXR1cm5zOgogICogMCBvbiBz
dWNjZXNzLCBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUuCiAgKi8KQEAgLTgyMCw2ICs4
MjYsOCBAQCBpbnQgZG1hX2J1Zl9waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
KQogCXN0cnVjdCBkbWFfYnVmICpkbWFidWYgPSBhdHRhY2gtPmRtYWJ1ZjsKIAlpbnQgcmV0ID0g
MDsKIAorCVdBUk5fT04oIWRtYV9idWZfYXR0YWNobWVudF9pc19keW5hbWljKGF0dGFjaCkpOwor
CiAJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoZG1hYnVmLT5yZXN2KTsKIAogCWlmIChkbWFidWYtPm9w
cy0+cGluKQpAQCAtODMwLDE0ICs4MzgsMTkgQEAgaW50IGRtYV9idWZfcGluKHN0cnVjdCBkbWFf
YnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfcGluKTsK
IAogLyoqCi0gKiBkbWFfYnVmX3VucGluIC0gUmVtb3ZlIGxvY2sgZnJvbSBETUEtYnVmCi0gKgor
ICogZG1hX2J1Zl91bnBpbiAtIFVucGluIGEgRE1BLWJ1ZgogICogQGF0dGFjaDoJW2luXQlhdHRh
Y2htZW50IHdoaWNoIHNob3VsZCBiZSB1bnBpbm5lZAorICoKKyAqIFRoaXMgdW5waW5zIGEgYnVm
ZmVyIHBpbm5lZCBieSBkbWFfYnVmX3BpbigpIGFuZCBhbGxvd3MgdGhlIGV4cG9ydGVyIHRvIG1v
dmUKKyAqIGFueSBtYXBwaW5nIG9mIEBhdHRhY2ggYWdhaW4gYW5kIGluZm9ybSB0aGUgaW1wb3J0
ZXIgdGhyb3VnaAorICogJmRtYV9idWZfYXR0YWNoX29wcy5tb3ZlX25vdGlmeS4KICAqLwogdm9p
ZCBkbWFfYnVmX3VucGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKIHsKIAlz
dHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmID0gYXR0YWNoLT5kbWFidWY7CiAKKwlXQVJOX09OKCFkbWFf
YnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyhhdHRhY2gpKTsKKwogCWRtYV9yZXN2X2Fzc2VydF9o
ZWxkKGRtYWJ1Zi0+cmVzdik7CiAKIAlpZiAoZG1hYnVmLT5vcHMtPnVucGluKQpkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAppbmRl
eCA0MzgwMmEzMWIyNWQuLjYyODY4MWJmNmM5OSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtYnVmLmgKKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKQEAgLTg2LDEzICs4NiwxNSBA
QCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgewogCSAqIEBwaW46CiAJICoKIAkgKiBUaGlzIGlzIGNhbGxl
ZCBieSBkbWFfYnVmX3BpbigpIGFuZCBsZXRzIHRoZSBleHBvcnRlciBrbm93IHRoYXQgdGhlCi0J
ICogRE1BLWJ1ZiBjYW4ndCBiZSBtb3ZlZCBhbnkgbW9yZS4KKwkgKiBETUEtYnVmIGNhbid0IGJl
IG1vdmVkIGFueSBtb3JlLiBUaGUgZXhwb3J0ZXIgc2hvdWxkIHBpbiB0aGUgYnVmZmVyCisJICog
aW50byBzeXN0ZW0gbWVtb3J5IHRvIG1ha2Ugc3VyZSBpdCBpcyBnZW5lcmFsbHkgYWNjZXNzaWJs
ZSBieSBvdGhlcgorCSAqIGRldmljZXMuCiAJICoKIAkgKiBUaGlzIGlzIGNhbGxlZCB3aXRoIHRo
ZSAmZG1hYnVmLnJlc3Ygb2JqZWN0IGxvY2tlZCBhbmQgaXMgbXV0dWFsCiAJICogZXhjbHVzaXZl
IHdpdGggQGNhY2hlX3NndF9tYXBwaW5nLgogCSAqCi0JICogVGhpcyBjYWxsYmFjayBpcyBvcHRp
b25hbCBhbmQgc2hvdWxkIG9ubHkgYmUgdXNlZCBpbiBsaW1pdGVkIHVzZQotCSAqIGNhc2VzIGxp
a2Ugc2Nhbm91dCBhbmQgbm90IGZvciB0ZW1wb3JhcnkgcGluIG9wZXJhdGlvbnMuCisJICogVGhp
cyBpcyBjYWxsZWQgYXV0b21hdGljYWxseSBmb3Igbm9uLWR5bmFtaWMgaW1wb3J0ZXJzIGZyb20K
KwkgKiBkbWFfYnVmX2F0dGFjaCgpLgogCSAqCiAJICogUmV0dXJuczoKIAkgKgotLSAKMi4yOS4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
