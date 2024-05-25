Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E52C48CF003
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 May 2024 18:07:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A2C44430A
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 May 2024 16:01:08 +0000 (UTC)
Received: from msa.smtpout.orange.fr (smtp-68.smtpout.orange.fr [80.12.242.68])
	by lists.linaro.org (Postfix) with ESMTPS id A1CCE3F19B
	for <linaro-mm-sig@lists.linaro.org>; Sat, 25 May 2024 16:00:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=wanadoo.fr header.s=t20230301 header.b=oKBfEsCO;
	spf=pass (lists.linaro.org: domain of christophe.jaillet@wanadoo.fr designates 80.12.242.68 as permitted sender) smtp.mailfrom=christophe.jaillet@wanadoo.fr;
	dmarc=pass (policy=quarantine) header.from=wanadoo.fr
Received: from fedora.home ([86.243.17.157])
	by smtp.orange.fr with ESMTPA
	id AtpGslhQJ3tO6AtpGsclcT; Sat, 25 May 2024 18:00:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1716652856;
	bh=WNut/xtqmEtO3vfRepBElQ9DP3GCge0U4oTsojKf0dA=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=oKBfEsCODhjYN3BuoeE7mxdjrfivsP7ev1oxVxunkS7Xyq8NjX3IACLpQA8aaF4dV
	 IXUvuoWfI/e8POQL1UsoAbm9jAiUgP6m1hH7CPgcIpomq6iP4RetU5U3bx0C56vhVz
	 K2fD8tOA5/zPwuLwZvLn94m9V465MwTg+1Bn2FgM3qpS7epANCO3SJ6qrbBlLz1vGv
	 vVIq8CDs0USJrTHwiVQa7U/05dsyTG4uw7cttnaOkpEIVYKP0RSwJZjSmiTuZnxOl/
	 FMxIy6hi60srtYd527d8I+WX7MW7jI4w0gybwSUwO2vMSwyDcfK8/fFkz36bP3kgD6
	 +NYA7E3F3le5Q==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 25 May 2024 18:00:56 +0200
X-ME-IP: 86.243.17.157
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Gustavo Padovan <gustavo@padovan.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Date: Sat, 25 May 2024 18:00:31 +0200
Message-ID: <8b4e556e07b5dd78bb8a39b67ea0a43b199083c8.1716652811.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A1CCE3F19B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[wanadoo.fr,quarantine];
	R_DKIM_ALLOW(-0.20)[wanadoo.fr:s=t20230301];
	R_SPF_ALLOW(-0.20)[+ip4:80.12.242.0/25];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[80.12.242.68:from];
	ASN(0.00)[asn:3215, ipnet:80.12.240.0/20, country:FR];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[wanadoo.fr];
	FREEMAIL_FROM(0.00)[wanadoo.fr];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[wanadoo.fr:+];
	NEURAL_HAM(-0.00)[-0.978];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,wanadoo.fr,lists.freedesktop.org,lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 2LEZJT443X72KRGKHTCGJZNKTGJNFKSE
X-Message-ID-Hash: 2LEZJT443X72KRGKHTCGJZNKTGJNFKSE
X-MailFrom: christophe.jaillet@wanadoo.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf/fence-array: Add flex array to struct dma_fence_array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2LEZJT443X72KRGKHTCGJZNKTGJNFKSE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBpcyBhbiBlZmZvcnQgdG8gZ2V0IHJpZCBvZiBhbGwgbXVsdGlwbGljYXRpb25zIGZyb20g
YWxsb2NhdGlvbg0KZnVuY3Rpb25zIGluIG9yZGVyIHRvIHByZXZlbnQgaW50ZWdlciBvdmVyZmxv
d3MgWzFdWzJdLg0KDQpUaGUgInN0cnVjdCBkbWFfZmVuY2VfYXJyYXkiIGNhbiBiZSByZWZhY3Rv
cmVkIHRvIGFkZCBhIGZsZXggYXJyYXkgaW4gb3JkZXINCnRvIGhhdmUgdGhlICJjYWxsYmFjayBz
dHJ1Y3R1cmVzIGFsbG9jYXRlZCBiZWhpbmQgdGhlIGFycmF5IiBiZSBtb3JlDQpleHBsaWNpdC4N
Cg0KRG8gc286DQogICAtIG1ha2VzIHRoZSBjb2RlIG1vcmUgcmVhZGFibGUgYW5kIHNhZmVyLg0K
ICAgLSBhbGxvd3MgdXNpbmcgX19jb3VudGVkX2J5KCkgZm9yIGFkZGl0aW9uYWwgY2hlY2tzDQog
ICAtIGF2b2lkcyBzb21lIHBvaW50ZXIgYXJpdGhtZXRpYyBpbiBkbWFfZmVuY2VfYXJyYXlfZW5h
YmxlX3NpZ25hbGluZygpDQoNCkxpbms6IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwv
bGF0ZXN0L3Byb2Nlc3MvZGVwcmVjYXRlZC5odG1sI29wZW4tY29kZWQtYXJpdGhtZXRpYy1pbi1h
bGxvY2F0b3ItYXJndW1lbnRzIFsxXQ0KTGluazogaHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGlu
dXgvaXNzdWVzLzE2MCBbMl0NClNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgSkFJTExFVCA8Y2hy
aXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI+DQpSZXZpZXdlZC1ieTogS2VlcyBDb29rIDxrZWVz
Y29va0BjaHJvbWl1bS5vcmc+DQotLS0NCkNvbXBpbGUgdGVzdGVkIG9ubHkuDQoNCkNoYW5nZXMg
aW4gdjI6DQogIC0gTmFtZSB0aGUgbmV3IGZpZWxkICdjYWxsYmFja3MnIGluc3RlYWQgb2YgJ2Ni
JyAgIFtDaHJpc3RpYW4gS8O2bmlnXQ0KDQp2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
L2QzMjA0YTViNDc3NjU1MzQ1NWMyY2ZiMWRlZjcyZjFkYWUwZGJhMjUuMTcxNjA1NDQwMy5naXQu
Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnIvDQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWFycmF5LmMgfCAxMCArKysrLS0tLS0tDQogaW5jbHVkZS9saW51eC9kbWEtZmVuY2Ut
YXJyYXkuaCAgIHwgIDMgKysrDQogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFy
cmF5LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCmluZGV4IDliM2NlODk0
ODM1MS4uYzc0YWMxOTdkNWZlIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS1hcnJheS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCkBAIC03
MCw3ICs3MCw3IEBAIHN0YXRpYyB2b2lkIGRtYV9mZW5jZV9hcnJheV9jYl9mdW5jKHN0cnVjdCBk
bWFfZmVuY2UgKmYsDQogc3RhdGljIGJvb2wgZG1hX2ZlbmNlX2FycmF5X2VuYWJsZV9zaWduYWxp
bmcoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQogew0KIAlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5
ICphcnJheSA9IHRvX2RtYV9mZW5jZV9hcnJheShmZW5jZSk7DQotCXN0cnVjdCBkbWFfZmVuY2Vf
YXJyYXlfY2IgKmNiID0gKHZvaWQgKikoJmFycmF5WzFdKTsNCisJc3RydWN0IGRtYV9mZW5jZV9h
cnJheV9jYiAqY2IgPSBhcnJheS0+Y2FsbGJhY2tzOw0KIAl1bnNpZ25lZCBpOw0KIA0KIAlmb3Ig
KGkgPSAwOyBpIDwgYXJyYXktPm51bV9mZW5jZXM7ICsraSkgew0KQEAgLTE2OCwyMiArMTY4LDIw
IEBAIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmRtYV9mZW5jZV9hcnJheV9jcmVhdGUoaW50IG51
bV9mZW5jZXMsDQogCQkJCQkgICAgICAgYm9vbCBzaWduYWxfb25fYW55KQ0KIHsNCiAJc3RydWN0
IGRtYV9mZW5jZV9hcnJheSAqYXJyYXk7DQotCXNpemVfdCBzaXplID0gc2l6ZW9mKCphcnJheSk7
DQogDQogCVdBUk5fT04oIW51bV9mZW5jZXMgfHwgIWZlbmNlcyk7DQogDQotCS8qIEFsbG9jYXRl
IHRoZSBjYWxsYmFjayBzdHJ1Y3R1cmVzIGJlaGluZCB0aGUgYXJyYXkuICovDQotCXNpemUgKz0g
bnVtX2ZlbmNlcyAqIHNpemVvZihzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5X2NiKTsNCi0JYXJyYXkg
PSBremFsbG9jKHNpemUsIEdGUF9LRVJORUwpOw0KKwlhcnJheSA9IGt6YWxsb2Moc3RydWN0X3Np
emUoYXJyYXksIGNhbGxiYWNrcywgbnVtX2ZlbmNlcyksIEdGUF9LRVJORUwpOw0KIAlpZiAoIWFy
cmF5KQ0KIAkJcmV0dXJuIE5VTEw7DQogDQorCWFycmF5LT5udW1fZmVuY2VzID0gbnVtX2ZlbmNl
czsNCisNCiAJc3Bpbl9sb2NrX2luaXQoJmFycmF5LT5sb2NrKTsNCiAJZG1hX2ZlbmNlX2luaXQo
JmFycmF5LT5iYXNlLCAmZG1hX2ZlbmNlX2FycmF5X29wcywgJmFycmF5LT5sb2NrLA0KIAkJICAg
ICAgIGNvbnRleHQsIHNlcW5vKTsNCiAJaW5pdF9pcnFfd29yaygmYXJyYXktPndvcmssIGlycV9k
bWFfZmVuY2VfYXJyYXlfd29yayk7DQogDQotCWFycmF5LT5udW1fZmVuY2VzID0gbnVtX2ZlbmNl
czsNCiAJYXRvbWljX3NldCgmYXJyYXktPm51bV9wZW5kaW5nLCBzaWduYWxfb25fYW55ID8gMSA6
IG51bV9mZW5jZXMpOw0KIAlhcnJheS0+ZmVuY2VzID0gZmVuY2VzOw0KIA0KZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5j
ZS1hcnJheS5oDQppbmRleCBlYzdmMjVkZWYzOTIuLjI5YzU2NTBjMTAzOCAxMDA2NDQNCi0tLSBh
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1h
LWZlbmNlLWFycmF5LmgNCkBAIC0zMyw2ICszMyw3IEBAIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXlf
Y2Igew0KICAqIEBudW1fcGVuZGluZzogZmVuY2VzIGluIHRoZSBhcnJheSBzdGlsbCBwZW5kaW5n
DQogICogQGZlbmNlczogYXJyYXkgb2YgdGhlIGZlbmNlcw0KICAqIEB3b3JrOiBpbnRlcm5hbCBp
cnFfd29yayBmdW5jdGlvbg0KKyAqIEBjYWxsYmFja3M6IGFycmF5IG9mIGNhbGxiYWNrIGhlbHBl
cnMNCiAgKi8NCiBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5IHsNCiAJc3RydWN0IGRtYV9mZW5jZSBi
YXNlOw0KQEAgLTQzLDYgKzQ0LDggQEAgc3RydWN0IGRtYV9mZW5jZV9hcnJheSB7DQogCXN0cnVj
dCBkbWFfZmVuY2UgKipmZW5jZXM7DQogDQogCXN0cnVjdCBpcnFfd29yayB3b3JrOw0KKw0KKwlz
dHJ1Y3QgZG1hX2ZlbmNlX2FycmF5X2NiIGNhbGxiYWNrc1tdIF9fY291bnRlZF9ieShudW1fZmVu
Y2VzKTsNCiB9Ow0KIA0KIC8qKg0KLS0gDQoyLjQ1LjENCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
