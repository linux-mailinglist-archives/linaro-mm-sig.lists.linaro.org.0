Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D5151AA9EE8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 May 2025 00:16:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E7D54592E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 22:16:26 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 0F001455DE
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 22:16:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=cIwrei4S;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=sashal@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4246BA4C74F;
	Mon,  5 May 2025 22:10:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE8D4C4CEE4;
	Mon,  5 May 2025 22:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746483373;
	bh=ZEVyxOgkW7odVCol3qzWQcuns9JCN+tQHNj3sRiHBFo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cIwrei4SUWePiZVbR6ta/ZrNf7ElXXAYzVqtK+yOJJUbGdMlnIkEz5sS4Vdlt+aIQ
	 KYJ8TgOE7Mju6j7EKDvC6Zc0F5YK9oMVLdyt95OE/e9nmIS6XClAs4XnX3GrQfH1Ek
	 Dt2YARQCVGEFkU6rLdpgx+ADCm34bAKUUhraqoUEVo/6J2xnnlmFOfoyp+WX5c9H1R
	 mHh+neWsbwZ76gcocFdwlXU8eamzAheWw3v+Pg0JNQ4TXYLUSaR4VmJ2obzMN2MvF9
	 M94HUA+nL2vDKCVk8fbSurs6IzprTeCBcxAopZ85ci1ket5dpRePio/dK7X7grJIWZ
	 U6XB4xYmdWSTQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  5 May 2025 18:04:35 -0400
Message-Id: <20250505221419.2672473-59-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505221419.2672473-1-sashal@kernel.org>
References: <20250505221419.2672473-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14.5
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0F001455DE
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[amd.com,kernel.org,gmail.com,ffwll.ch,linaro.org,igalia.com,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,nyc.source.kernel.org:helo,nyc.source.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: YPWVGDUMR4RJHJ2KVP5KM7MSO4WMO5KS
X-Message-ID-Hash: YPWVGDUMR4RJHJ2KVP5KM7MSO4WMO5KS
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Srinivasan Shanmugam <srinivasan.shanmugam@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Sasha Levin <sashal@kernel.org>, simona@ffwll.ch, sumit.semwal@linaro.org, tvrtko.ursulin@igalia.com, xiaogang.chen@amd.com, mdaenzer@redhat.com, Yunxiang.Li@amd.com, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 6.14 059/642] drm/amdgpu: rework how the cleaner shader is emitted v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YPWVGDUMR4RJHJ2KVP5KM7MSO4WMO5KS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQpbIFVw
c3RyZWFtIGNvbW1pdCBiN2ZiY2Q3N2JiNDY3ZDA5YmExNGNiNGVjM2IxMjFkYzg1YmIzMTAwIF0N
Cg0KSW5zdGVhZCBvZiBlbWl0dGluZyB0aGUgY2xlYW5lciBzaGFkZXIgZm9yIGV2ZXJ5IGpvYiB3
aGljaCBoYXMgdGhlDQplbmZvcmNlX2lzb2xhdGlvbiBmbGFnIHNldCBvbmx5IGVtaXQgaXQgZm9y
IHRoZSBmaXJzdCBzdWJtaXNzaW9uIGZyb20NCmV2ZXJ5IGNsaWVudC4NCg0KdjI6IGFkZCBtaXNz
aW5nIE5VTEwgY2hlY2sNCnYzOiBmaXggYW5vdGhlciBOVUxMIHBvaW50ZXIgZGVyZWYNCg0KU2ln
bmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
QWNrZWQtYnk6IFNyaW5pdmFzYW4gU2hhbm11Z2FtIDxzcmluaXZhc2FuLnNoYW5tdWdhbUBhbWQu
Y29tPg0KU2lnbmVkLW9mZi1ieTogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQu
Y29tPg0KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPg0KLS0t
DQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtLmMgfCAyNyArKysrKysrKysr
KysrKysrKysrKy0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3ZtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdm0uYw0KaW5kZXgg
MjJhYTRhOGYxMTg5MS4uZjBkNjc1YzBmYzY5YyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV92bS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfdm0uYw0KQEAgLTc1NCw2ICs3NTQsNyBAQCBpbnQgYW1kZ3B1X3ZtX2ZsdXNoKHN0
cnVjdCBhbWRncHVfcmluZyAqcmluZywgc3RydWN0IGFtZGdwdV9qb2IgKmpvYiwNCiAJCSAgICBi
b29sIG5lZWRfcGlwZV9zeW5jKQ0KIHsNCiAJc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYgPSBy
aW5nLT5hZGV2Ow0KKwlzdHJ1Y3QgYW1kZ3B1X2lzb2xhdGlvbiAqaXNvbGF0aW9uID0gJmFkZXYt
Pmlzb2xhdGlvbltyaW5nLT54Y3BfaWRdOw0KIAl1bnNpZ25lZCB2bWh1YiA9IHJpbmctPnZtX2h1
YjsNCiAJc3RydWN0IGFtZGdwdV92bWlkX21nciAqaWRfbWdyID0gJmFkZXYtPnZtX21hbmFnZXIu
aWRfbWdyW3ZtaHViXTsNCiAJc3RydWN0IGFtZGdwdV92bWlkICppZCA9ICZpZF9tZ3ItPmlkc1tq
b2ItPnZtaWRdOw0KQEAgLTc2MSw4ICs3NjIsOSBAQCBpbnQgYW1kZ3B1X3ZtX2ZsdXNoKHN0cnVj
dCBhbWRncHVfcmluZyAqcmluZywgc3RydWN0IGFtZGdwdV9qb2IgKmpvYiwNCiAJYm9vbCBnZHNf
c3dpdGNoX25lZWRlZCA9IHJpbmctPmZ1bmNzLT5lbWl0X2dkc19zd2l0Y2ggJiYNCiAJCWpvYi0+
Z2RzX3N3aXRjaF9uZWVkZWQ7DQogCWJvb2wgdm1fZmx1c2hfbmVlZGVkID0gam9iLT52bV9uZWVk
c19mbHVzaDsNCi0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBOVUxMOw0KKwlib29sIGNsZWFu
ZXJfc2hhZGVyX25lZWRlZCA9IGZhbHNlOw0KIAlib29sIHBhc2lkX21hcHBpbmdfbmVlZGVkID0g
ZmFsc2U7DQorCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gTlVMTDsNCiAJdW5zaWduZWQgaW50
IHBhdGNoOw0KIAlpbnQgcjsNCiANCkBAIC03ODUsOCArNzg3LDEyIEBAIGludCBhbWRncHVfdm1f
Zmx1c2goc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLCBzdHJ1Y3QgYW1kZ3B1X2pvYiAqam9iLA0K
IAlwYXNpZF9tYXBwaW5nX25lZWRlZCAmPSBhZGV2LT5nbWMuZ21jX2Z1bmNzLT5lbWl0X3Bhc2lk
X21hcHBpbmcgJiYNCiAJCXJpbmctPmZ1bmNzLT5lbWl0X3dyZWc7DQogDQorCWNsZWFuZXJfc2hh
ZGVyX25lZWRlZCA9IGFkZXYtPmdmeC5lbmFibGVfY2xlYW5lcl9zaGFkZXIgJiYNCisJCXJpbmct
PmZ1bmNzLT5lbWl0X2NsZWFuZXJfc2hhZGVyICYmIGpvYi0+YmFzZS5zX2ZlbmNlICYmDQorCQkm
am9iLT5iYXNlLnNfZmVuY2UtPnNjaGVkdWxlZCA9PSBpc29sYXRpb24tPnNwZWFyaGVhZDsNCisN
CiAJaWYgKCF2bV9mbHVzaF9uZWVkZWQgJiYgIWdkc19zd2l0Y2hfbmVlZGVkICYmICFuZWVkX3Bp
cGVfc3luYyAmJg0KLQkgICAgIShqb2ItPmVuZm9yY2VfaXNvbGF0aW9uICYmICFqb2ItPnZtaWQp
KQ0KKwkgICAgIWNsZWFuZXJfc2hhZGVyX25lZWRlZCkNCiAJCXJldHVybiAwOw0KIA0KIAlhbWRn
cHVfcmluZ19pYl9iZWdpbihyaW5nKTsNCkBAIC03OTcsOSArODAzLDcgQEAgaW50IGFtZGdwdV92
bV9mbHVzaChzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIHN0cnVjdCBhbWRncHVfam9iICpqb2Is
DQogCWlmIChuZWVkX3BpcGVfc3luYykNCiAJCWFtZGdwdV9yaW5nX2VtaXRfcGlwZWxpbmVfc3lu
YyhyaW5nKTsNCiANCi0JaWYgKGFkZXYtPmdmeC5lbmFibGVfY2xlYW5lcl9zaGFkZXIgJiYNCi0J
ICAgIHJpbmctPmZ1bmNzLT5lbWl0X2NsZWFuZXJfc2hhZGVyICYmDQotCSAgICBqb2ItPmVuZm9y
Y2VfaXNvbGF0aW9uKQ0KKwlpZiAoY2xlYW5lcl9zaGFkZXJfbmVlZGVkKQ0KIAkJcmluZy0+ZnVu
Y3MtPmVtaXRfY2xlYW5lcl9zaGFkZXIocmluZyk7DQogDQogCWlmICh2bV9mbHVzaF9uZWVkZWQp
IHsNCkBAIC04MjEsNyArODI1LDcgQEAgaW50IGFtZGdwdV92bV9mbHVzaChzdHJ1Y3QgYW1kZ3B1
X3JpbmcgKnJpbmcsIHN0cnVjdCBhbWRncHVfam9iICpqb2IsDQogCQkJCQkgICAgam9iLT5vYV9z
aXplKTsNCiAJfQ0KIA0KLQlpZiAodm1fZmx1c2hfbmVlZGVkIHx8IHBhc2lkX21hcHBpbmdfbmVl
ZGVkKSB7DQorCWlmICh2bV9mbHVzaF9uZWVkZWQgfHwgcGFzaWRfbWFwcGluZ19uZWVkZWQgfHwg
Y2xlYW5lcl9zaGFkZXJfbmVlZGVkKSB7DQogCQlyID0gYW1kZ3B1X2ZlbmNlX2VtaXQocmluZywg
JmZlbmNlLCBOVUxMLCAwKTsNCiAJCWlmIChyKQ0KIAkJCXJldHVybiByOw0KQEAgLTg0Myw2ICs4
NDcsMTcgQEAgaW50IGFtZGdwdV92bV9mbHVzaChzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIHN0
cnVjdCBhbWRncHVfam9iICpqb2IsDQogCQlpZC0+cGFzaWRfbWFwcGluZyA9IGRtYV9mZW5jZV9n
ZXQoZmVuY2UpOw0KIAkJbXV0ZXhfdW5sb2NrKCZpZF9tZ3ItPmxvY2spOw0KIAl9DQorDQorCS8q
DQorCSAqIE1ha2Ugc3VyZSB0aGF0IGFsbCBvdGhlciBzdWJtaXNzaW9ucyB3YWl0IGZvciB0aGUg
Y2xlYW5lciBzaGFkZXIgdG8NCisJICogZmluaXNoIGJlZm9yZSB3ZSBwdXNoIHRoZW0gdG8gdGhl
IEhXLg0KKwkgKi8NCisJaWYgKGNsZWFuZXJfc2hhZGVyX25lZWRlZCkgew0KKwkJbXV0ZXhfbG9j
aygmYWRldi0+ZW5mb3JjZV9pc29sYXRpb25fbXV0ZXgpOw0KKwkJZG1hX2ZlbmNlX3B1dChpc29s
YXRpb24tPnNwZWFyaGVhZCk7DQorCQlpc29sYXRpb24tPnNwZWFyaGVhZCA9IGRtYV9mZW5jZV9n
ZXQoZmVuY2UpOw0KKwkJbXV0ZXhfdW5sb2NrKCZhZGV2LT5lbmZvcmNlX2lzb2xhdGlvbl9tdXRl
eCk7DQorCX0NCiAJZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQogDQogCWFtZGdwdV9yaW5nX3BhdGNo
X2NvbmRfZXhlYyhyaW5nLCBwYXRjaCk7DQotLSANCjIuMzkuNQ0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
