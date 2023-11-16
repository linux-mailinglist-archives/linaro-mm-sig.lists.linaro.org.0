Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A47F7EE73A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Nov 2023 20:14:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CF3340D64
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Nov 2023 19:14:29 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	by lists.linaro.org (Postfix) with ESMTPS id 42D713F97F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Nov 2023 19:14:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=OMXQJsxM;
	dmarc=pass (policy=none) header.from=chromium.org;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.210.178 as permitted sender) smtp.mailfrom=keescook@chromium.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6c4ed8eef16so1180211b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Nov 2023 11:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700162052; x=1700766852; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eVfmF+WaYqBufuKhkvOgsH1LmjL21XWKZ2k2AqPWwJc=;
        b=OMXQJsxMgp4ZkA0Dswb3x7k7vXNclIVZXlQ9+u0VRwDzVi9IcyWcTrAKHWyWlz5S8K
         DJxCYzcPBGffnM+b2ZZ7PG3jmy1S6EQHWdR85Jq5xBu3CiH1ZLEmt8/L7ne3f7uTcWCH
         bC9mMD9PWSJz4txr5iLtNL3OrYo8B9FBwlc3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700162052; x=1700766852;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eVfmF+WaYqBufuKhkvOgsH1LmjL21XWKZ2k2AqPWwJc=;
        b=X7dEEPoBjRKQPWdn2fMSvkOaDN/pCslsWpxI0ZQpolI+7Jr4l9mZe7FNSq6aiGFP1O
         20Jxgah86wIYWD3D2LLuUig6JPKBoiNNcjtkOOqVCOfoMC3j1d5avK0HBRrSMNYpdZNo
         fyPAMyz+6fjuj83e2KHKPC9QXJyi+s3z8iiDGrlqfdApkUFvjn62qra0UfGltO9oyq0Q
         MT9qDHMH9ZzKZ5jSO5vahz6ntvXqg/8GNx+NLxYCDs4EHGgj+Ojibq8LUEXRLsZCbS7X
         B2+VwTvT8ojywjVvdgs8mOkxgXUjyzFUth2nAXH/0WzUiaR5Z5iivA2UkuI7rNpahCOK
         aCfw==
X-Gm-Message-State: AOJu0Yzm4unVM5pV7BAR4yNLEBL3hfq1dnEXImyuT1ClDYd6g/msHaL1
	qRtOr9+i2r9JHPq2cCjSXtQwMA==
X-Google-Smtp-Source: AGHT+IEhiV51XKMD1zOBA5sD1OXQnyONH1asnHIR7eOg2pPSelrDFt5DBTV7MXEVihwsOKosOCrQ0A==
X-Received: by 2002:a05:6a20:8421:b0:185:876f:4f4d with SMTP id c33-20020a056a20842100b00185876f4f4dmr20888854pzd.32.1700162052390;
        Thu, 16 Nov 2023 11:14:12 -0800 (PST)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net. [198.0.35.241])
        by smtp.gmail.com with ESMTPSA id it14-20020a056a00458e00b006c8721330fesm83721pfb.74.2023.11.16.11.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 11:14:12 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 16 Nov 2023 11:14:10 -0800
Message-Id: <20231116191409.work.634-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1603; i=keescook@chromium.org;
 h=from:subject:message-id; bh=ujMUNo3RU3wpVThFuzKIZ2gb6sD3uJtU27PlSfCQHtw=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBlVmoBZbJJwqB7WG04tbh2/UJo2fxHw9dAlFGyu
 eEfMPCM8D+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCZVZqAQAKCRCJcvTf3G3A
 JtT+D/9ZzA0yA7kvOO/Y+64NFTRleFpB8MdlXKFS7ysgcMx4Q/lTBKhkKLD6qvD9NiIXGTKSGrh
 3GGTQlSXtD3gnP9vhfnsdQPxm7Nme0HfgCADjlK12TQqmzTEluquxp57OqhgDPqrFwjp8zEkEHB
 Hznzi9UF9cqj/T63wcAuGjXC8mx550cZDOzWaKfsxIIwENsPZLrbekUNeZsgQPN8un/mTeTasXh
 Dim2vXCq1wg+zmIYt4wb3MFHvAeNDMdbudLjwnaxS7KH4SAhXIV+iQTJjOW5gj+CnOEliIjO0eP
 fctBuohDOYWiyPZ/b5LKRsaNIaNLhlsKrsXW7qpvTi8NTdNME/ndlbETv7KqumwjSQtiDoIqNmf
 t4ZH9yrrcuYCaDcaA0D5Mh7Z3fyLsNgiO5WZ5JDwGOfxsVz5Ux99LctSgV9M1T6ygM6fYkp3X5/
 jHoeIUVCzQ/rFkZqtLD3RMj0C94i6hEM9oWm1/HyfB+sFVvdNn7zG+RyuryDoT2rOjrig1Y4IES
 i8Zu0UB9f03CJHQeC9RkPMDoG4U+ZEA9wgMwqQ2eNX8M3t3UGzFepxFW11XLyXTfEq8GKLh8Qxd
 qYRKZLWDQkcbtBf6aRIGrTkqc3Xw6N6aymKwpizpCz/BphPJrIy5TIkEpZI9xYTbwzO+eW77/2H
 cTml0Zt rnUC/efg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 42D713F97F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.178:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,amd.com,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[chromium.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 7D4AR6OP2U432QAHHIRR33MA4LODYSLU
X-Message-ID-Hash: 7D4AR6OP2U432QAHHIRR33MA4LODYSLU
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Azeem Shaikh <azeemshaikh38@gmail.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Replace strlcpy() with strscpy()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7D4AR6OP2U432QAHHIRR33MA4LODYSLU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

c3RybGNweSgpIHJlYWRzIHRoZSBlbnRpcmUgc291cmNlIGJ1ZmZlciBmaXJzdC4gVGhpcyByZWFk
IG1heSBleGNlZWQNCnRoZSBkZXN0aW5hdGlvbiBzaXplIGxpbWl0LiBUaGlzIGlzIGJvdGggaW5l
ZmZpY2llbnQgYW5kIGNhbiBsZWFkDQp0byBsaW5lYXIgcmVhZCBvdmVyZmxvd3MgaWYgYSBzb3Vy
Y2Ugc3RyaW5nIGlzIG5vdCBOVUwtdGVybWluYXRlZFsxXS4NCkFkZGl0aW9uYWxseSwgaXQgcmV0
dXJucyB0aGUgc2l6ZSBvZiB0aGUgc291cmNlIHN0cmluZywgbm90IHRoZQ0KcmVzdWx0aW5nIHNp
emUgb2YgdGhlIGRlc3RpbmF0aW9uIHN0cmluZy4gSW4gYW4gZWZmb3J0IHRvIHJlbW92ZSBzdHJs
Y3B5KCkNCmNvbXBsZXRlbHlbMl0sIHJlcGxhY2Ugc3RybGNweSgpIGhlcmUgd2l0aCBzdHJzY3B5
KCkuDQoNCkxpbms6IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nl
c3MvZGVwcmVjYXRlZC5odG1sI3N0cmxjcHkgWzFdDQpMaW5rOiBodHRwczovL2dpdGh1Yi5jb20v
S1NQUC9saW51eC9pc3N1ZXMvODkgWzJdDQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxA
bGluYXJvLm9yZz4NCkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCkNjOiBBemVlbSBTaGFpa2ggPGF6ZWVtc2hhaWtoMzhAZ21haWwuY29tPg0KQ2M6IGxp
bnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNClNpZ25lZC1vZmYtYnk6
IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPg0KLS0tDQogZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYyB8IDQgKystLQ0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KaW5kZXggMjE5MTZiYmE3N2Q1Li44ZmU1YWE2N2Ix
NjcgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQorKysgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtNDYsMTIgKzQ2LDEyIEBAIHN0YXRpYyBjaGFyICpkbWFi
dWZmc19kbmFtZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnksIGNoYXIgKmJ1ZmZlciwgaW50IGJ1Zmxl
bikNCiB7DQogCXN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQogCWNoYXIgbmFtZVtETUFfQlVGX05B
TUVfTEVOXTsNCi0Jc2l6ZV90IHJldCA9IDA7DQorCXNzaXplX3QgcmV0ID0gMDsNCiANCiAJZG1h
YnVmID0gZGVudHJ5LT5kX2ZzZGF0YTsNCiAJc3Bpbl9sb2NrKCZkbWFidWYtPm5hbWVfbG9jayk7
DQogCWlmIChkbWFidWYtPm5hbWUpDQotCQlyZXQgPSBzdHJsY3B5KG5hbWUsIGRtYWJ1Zi0+bmFt
ZSwgRE1BX0JVRl9OQU1FX0xFTik7DQorCQlyZXQgPSBzdHJzY3B5KG5hbWUsIGRtYWJ1Zi0+bmFt
ZSwgc2l6ZW9mKG5hbWUpKTsNCiAJc3Bpbl91bmxvY2soJmRtYWJ1Zi0+bmFtZV9sb2NrKTsNCiAN
CiAJcmV0dXJuIGR5bmFtaWNfZG5hbWUoYnVmZmVyLCBidWZsZW4sICIvJXM6JXMiLA0KLS0gDQoy
LjM0LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
