Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DC18A85AA78
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Feb 2024 18:59:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 929F54009D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Feb 2024 17:59:23 +0000 (UTC)
Received: from smtp.smtpout.orange.fr (smtp-14.smtpout.orange.fr [80.12.242.14])
	by lists.linaro.org (Postfix) with ESMTPS id EC8543F3B9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Feb 2024 17:59:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=wanadoo.fr header.s=t20230301 header.b="hL2FC/PY";
	spf=pass (lists.linaro.org: domain of christophe.jaillet@wanadoo.fr designates 80.12.242.14 as permitted sender) smtp.mailfrom=christophe.jaillet@wanadoo.fr;
	dmarc=pass (policy=quarantine) header.from=wanadoo.fr
Received: from [192.168.1.18] ([92.140.202.140])
	by smtp.orange.fr with ESMTPA
	id c7uwr4K1Rb1Jlc7uwrZn6h; Mon, 19 Feb 2024 18:59:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1708365545;
	bh=ti6upGoRyyrC2hvsjOkpJVRvXntoJTVQ7/Zs/uqxjT4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=hL2FC/PYBaouzvlBBq79Hga/FRp5lg0G/W0pv0oEN7ZYTyC6Gf3gvHnHNw0Chyxy3
	 FEBM012Ssb3ZtdercwRyvz8fiFGb/WOFilLBBKWlE//OA8lgUKJ9csKadViwxkI0ry
	 t6h6RUTjQLA0vzgEG5S5pymbbZLTHLuX45NWMKnn7JTrIbTkZXPIGrjWBufil8a87Q
	 Q3EbREOG9yH1CFM3FTepq/D7O8VcQnCYZiD+AsuA4vqGnDdep+v7gGh2yhnrYRnUUH
	 bJSAvWeNGVO49Iznz8JoOuCSirJw5+4S/PA0MLr0oSlnvzzprX0Ji6NcET/oWbYYCw
	 mFmzV1c/a833Q==
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Mon, 19 Feb 2024 18:59:05 +0100
X-ME-IP: 92.140.202.140
Message-ID: <3fe4c327-b69b-464e-8e4e-005fa1813279@wanadoo.fr>
Date: Mon, 19 Feb 2024 18:59:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>
References: <f75d0426a17b57dbddacd7da345c1c62a3dbb7ce.1708278363.git.christophe.jaillet@wanadoo.fr>
 <91d964c2-3d5a-4e96-a4db-e755455c5b5c@moroto.mountain>
Content-Language: en-MW
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <91d964c2-3d5a-4e96-a4db-e755455c5b5c@moroto.mountain>
X-Rspamd-Queue-Id: EC8543F3B9
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.97 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.98)[99.90%];
	DMARC_POLICY_ALLOW(-0.50)[wanadoo.fr,quarantine];
	R_DKIM_ALLOW(-0.20)[wanadoo.fr:s=t20230301];
	R_SPF_ALLOW(-0.20)[+ip4:80.12.242.0/25];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[80.12.242.14:from];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[wanadoo.fr];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[wanadoo.fr:+];
	DNSWL_BLOCKED(0.00)[92.140.202.140:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[wanadoo.fr];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3215, ipnet:80.12.240.0/20, country:FR];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_IN_DNSWL_NONE(0.00)[80.12.242.14:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: RLOJ6DEE2B3TLLOBNIEVE2A5CDQ2AOXX
X-Message-ID-Hash: RLOJ6DEE2B3TLLOBNIEVE2A5CDQ2AOXX
X-MailFrom: christophe.jaillet@wanadoo.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: gustavo@embeddedor.com, keescook@chromium.org, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] udmabuf: Fix a potential (and unlikely) access to unallocated memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RLOJ6DEE2B3TLLOBNIEVE2A5CDQ2AOXX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

TGUgMTkvMDIvMjAyNCDDoCAwOTozNywgRGFuIENhcnBlbnRlciBhIMOpY3JpdMKgOg0KPiBPbiBT
dW4sIEZlYiAxOCwgMjAyNCBhdCAwNjo0Njo0NFBNICswMTAwLCBDaHJpc3RvcGhlIEpBSUxMRVQg
d3JvdGU6DQo+PiBJZiAnbGlzdF9saW1pdCcgaXMgc2V0IHRvIGEgdmVyeSBoaWdoIHZhbHVlLCAn
bHNpemUnIGNvbXB1dGF0aW9uIGNvdWxkDQo+PiBvdmVyZmxvdyBpZiAnaGVhZC5jb3VudCcgaXMg
YmlnIGVub3VnaC4NCj4+DQo+IA0KPiBUaGUgImxpc3RfbGltaXQiIGlzIHNldCB2aWEgbW9kdWxl
IHBhcmFtZXRlciBzbyBpZiB5b3Ugc2V0IHRoYXQgaGlnaA0KPiBlbm91Z2ggdG8gbGVhZCB0byBh
biBpbnRlZ2VyIG92ZXJmbG93IHRoZW4geW91IGtpbmQgb2YgZGVzZXJ2ZSB3aGF0DQo+IHlvdSBn
ZXQuDQo+IA0KPiBUaGlzIHBhdGNoIGlzIG5pY2UgZm9yIGtlcm5lbCBoYXJkZW5pbmcgYW5kIG1h
a2luZyB0aGUgY29kZSBlYXNpZXIgdG8NCj4gcmVhZC9hdWRpdCBidXQgdGhlIHJlYWwgd29ybGQg
c2VjdXJpdHkgaW1wYWN0IGlzIG5lZ2xpZ2libGUuDQoNCkFncmVlZC4NCg0KVGhhdCBpcyB3aGF0
IEkgbWVhbnQgYnkgImFuZCB1bmxpa2VseSIuDQpNYXliZSB0aGUgY29tbWl0IG1lc3NhZ2UgY291
bGQgYmUgbW9yZSBleHBsaWNpdCBpZiBuZWVkZWQuDQoNCkxldCBtZSBrbm93IGlmIG9rIGFzLWlz
IG9yIGlmIEkgc2hvdWxkIHRyeSB0byByZS13b3JkIHRoZSBkZXNjcmlwdGlvbi4NCg0KQ0oNCg0K
PiANCj4gcmVnYXJkcywNCj4gZGFuIGNhcnBlbnRlcg0KPiANCj4gDQo+IA0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
