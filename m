Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QH1+GUttDWpCxQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 10:14:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9AD5897FD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 10:14:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A9FA405CA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 08:14:01 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lists.linaro.org (Postfix) with ESMTPS id 56EEC401B7
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 08:13:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=clv5UKGK;
	spf=pass (lists.linaro.org: domain of michel.daenzer@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=michel.daenzer@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4gL47J5KHPz9v1L;
	Wed, 20 May 2026 10:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1779264828;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hQXDOHc4G7dDQ3kQbTmT21spqpc7LlPAUB+S3ExR0h4=;
	b=clv5UKGKubY2vtMtbud3ZYfrqBJNr87Hwa1wylUBd92LNwEvCBU6e1tOetr8sn8iHHgpjP
	0QgpQDMdE+Nbhx7zYTijf3Ayy1/90aJX4Os8kv88Q+/WVPpozCCY2MMPY9BWifiL4/AWgH
	leboD+Zf7QGE4Vf9X9p4gpBTSnQD3CUVPp0TG5SpxFugxWBszWxPYFyG4jOO4VnQVOoI6G
	QZoj/xqBhSVcB53FhMYLEZysfLSRFQd7MwARa7wRiRmcOtV7QqUC+QuuMAZSNr2q+Hdlw7
	wUy5LXQ4bWur8dtC0QeVuLFyRsBcZ230ta29gNIuOJGV9B4zu4UzfpX0pKZuFg==
Message-ID: <385a4d4f-fe22-41a7-8d4b-4dc6bc9930d3@mailbox.org>
Date: Wed, 20 May 2026 10:13:42 +0200
MIME-Version: 1.0
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Xaver Hugl <xaver.hugl@kde.org>
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com>
 <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com>
 <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
 <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com>
 <CAHijbEWHp960qvZFoK7+9ppHAqkAR7=UQhtMUccqWzGd_pFPQA@mail.gmail.com>
 <5ee6d5af-ac48-41d7-a19f-e08a3c5b7d19@amd.com>
 <CAFZQkGwmeipZnvmBkcE7KhvUSMkSE=fzLBZtiMyhv3mM04Vudg@mail.gmail.com>
 <dff60378-4e47-4753-8878-feec6e1c2690@amd.com>
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
Content-Language: en-CA
In-Reply-To: <dff60378-4e47-4753-8878-feec6e1c2690@amd.com>
X-MBO-RS-META: jpk3endswr6szttqjbsbpohbo1sccyz9
X-MBO-RS-ID: 17008d7d8dbc6b85f09
X-Spamd-Bar: ---
Message-ID-Hash: 3HQ5VSH6VJAY7PIXMHG6KRL5NGSZCQUQ
X-Message-ID-Hash: 3HQ5VSH6VJAY7PIXMHG6KRL5NGSZCQUQ
X-MailFrom: michel.daenzer@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Julian Orth <ju.orth@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3HQ5VSH6VJAY7PIXMHG6KRL5NGSZCQUQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	DKIM_TRACE(0.00)[mailbox.org:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michel.daenzer@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: EF9AD5897FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8xOS8yNiAxODowMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gT24gNS8xOS8yNiAx
NzozMSwgWGF2ZXIgSHVnbCB3cm90ZToNCj4+IEFtIERpLiwgMTkuIE1haSAyMDI2IHVtIDE1OjI5
IFVociBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWcNCj4+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Og0KPj4+PiAxLiBUaGlzIHNlcmllcyBtYWtlcyB0aGUgYWJpbGl0eSB0byBtYW5pcHVsYXRl
IHN5bmNvYmpzIGF2YWlsYWJsZQ0KPj4+PiBpbmRlcGVuZGVudGx5IG9mIGF0dGFjaGVkIGhhcmR3
YXJlLg0KPj4+PiAyLiBJdCBtYWtlcyBpdCBhdmFpbGFibGUgdW5kZXIgYSBjb25zaXN0ZW50IHBh
dGggL2Rldi9zeW5jb2JqLg0KPj4+DQo+Pj4gRXhhY3RseSB0aGF0IGlzIGEgYmlnIG5vLWdvLiBU
aGlzIGhhcyB0byBiZSB1bmRlciAvZGV2L2RyaS4NCj4+IEZXSVcgdWRtYWJ1ZiBpcyBhbHNvIHVu
ZGVyIC9kZXYgZGlyZWN0bHksIGJ1dCBJIGRvbid0IHRoaW5rIGFueQ0KPj4gY29tcG9zaXRvciBk
ZXZlbG9wZXIgd291bGQgY29tcGxhaW4gYWJvdXQgYSBkaWZmZXJlbnQgcGF0aC4NCj4+IFdoYXQg
YXJlIHRoZSBydWxlcyBmb3IgdGhhdD8gQ291bGQgdGhpcyBzaW1wbHkgYmUgcHV0IGluIC9kZXYv
ZHJpL3N5bmNvYmo/DQo+IA0KPiBUaGUgc3luY29iaiBhcmUgYWN0dWFsbHkgdGhlIERSTSBzcGVj
aWZpYyB3YXkgb2YgZG9pbmcgdGhpbmdzLiBUaGUgZ2VuZXJhbCBrZXJuZWwgd2lkZSB3YXkgaXMg
dG8gdXNlIHN5bmMgZmlsZXMgKHNlZSBkcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMpLg0KPiAN
Cj4gQnV0IHRoZXJlIGhhcyBhbHJlYWR5IGJlZW4gdG9ucyBvZiBwcm9ibGVtcyB3aXRoIHRob3Nl
IHN5bmMgZmlsZXMuIEUuZy4gdGhleSBkb2Vzbid0IHN1cHBvcnQgeW91ciB1c2UgY2FzZSBhdCBh
bGwgc2luY2UgdGhleSBkb24ndCBoYXZlIHdhaXQgYmVmb3JlIHN1Ym1pdCBiZWhhdmlvci4NCj4g
DQo+IFNvIHRoZXJlIGFyZSBhbHJlYWR5IHdheXMgdG8gZG8gdGhpcywgYnV0IHRoZSBMaW51eCBr
ZXJuZWwgc28gZmFyIHRvbGQgZXZlcnlib2R5IHRoYXQgdGhpcyBpcyBmb3JiaWRkZW4uIFRoZSBE
Uk0gc3luY29iaiB3YWl0IGJlZm9yZSBzaWduYWwgZnVuY3Rpb25hbGl0eSBpcyBtdWNoIGJldHRl
ciwgYnV0IHRoZW4gYmFzaWNhbGx5IHRoZSBzZWNvbmQgdHJ5IHRvIGRvIHRoaXMuDQoNCkknbSBu
b3QgcXVpdGUgc3VyZSB3aGF0IHlvdSdyZSBnZXR0aW5nIGF0IGhlcmUsIGp1c3QgdG8gYmUgY2xl
YXIgdGhvdWdoOg0KDQpXaGlsZSB0aGUgc3luY29iaiBXYXlsYW5kIHByb3RvY29sIGV4dGVuc2lv
biBzdXBwb3J0cyB3YWl0LWJlZm9yZS1zdWJtaXQgYmVoYXZpb3VyIGF0IHRoZSBXYXlsYW5kIHBy
b3RvY29sIGxldmVsLCBpdCBkb2Vzbid0IG5lZWQgb3IgY2F1c2Ugd2FpdC1iZWZvcmUtc3VibWl0
IGJlaGF2aW91ciBmb3IgRE1BIGZlbmNlcyBpbiB0aGUga2VybmVsLiBUaGUgdXN1YWwgcnVsZXMg
YXBwbHkgdG8gZmVuY2VzIGF0dGFjaGVkIHRvIHN5bmNvYmogdGltZWxpbmUgcG9pbnRzLiBUaGUg
d2FpdC1iZWZvcmUtc3VibWl0IGJlaGF2aW91ciBhdCB0aGUgV2F5bGFuZCBwcm90b2NvbCBsZXZl
bCBjb21lcyBmcm9tIGFsbG93aW5nIHN1Ym1pdCBiZWZvcmUgYSBmZW5jZSBpcyBhdHRhY2hlZCB0
byB0aGUgYWNxdWlyZSB0aW1lbGluZSBwb2ludC4NCg0KKEl0IHRvb2sgbWUgYSB3aGlsZSB0byBy
ZWFsaXplIHRoaXMgZGlzdGluY3Rpb24sIGJlZm9yZSB3aGljaCBJIG1pc3Rha2VubHkgdGhvdWdo
dCB0aGUga2VybmVsJ3MgRE1BIGZlbmNlIHJ1bGVzIHdvdWxkIHByb2hpYml0IHdhaXQtYmVmb3Jl
LXN1Ym1pdCBiZWhhdmlvdXIgYXQgdGhlIFdheWxhbmQgcHJvdG9jb2wgbGV2ZWwgYXMgd2VsbCkN
Cg0KDQotLSANCkVhcnRobGluZyBNaWNoZWwgRMOkbnplciAgICAgICBcICAgICAgICBHTk9NRSAv
IFh3YXlsYW5kIC8gTWVzYSBkZXZlbG9wZXINCmh0dHBzOi8vcmVkaGF0LmNvbSAgICAgICAgICAg
ICBcICAgICAgICAgICAgICAgTGlicmUgc29mdHdhcmUgZW50aHVzaWFzdA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
