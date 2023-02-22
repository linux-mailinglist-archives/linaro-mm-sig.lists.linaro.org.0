Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD5F69FB9F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 19:58:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C03313F31A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 18:58:16 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	by lists.linaro.org (Postfix) with ESMTPS id 6B3943EBF1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 18:57:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=GXPFdJPq;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.174 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f174.google.com with SMTP id q15so836848oiw.11
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 10:57:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UF7nR0RAhOzqdZkHDCQjiRJ4YI0fbLgTEln+9Hs89cc=;
        b=GXPFdJPqHg34EbfZFQwsHqVl71NbwwnBvYtpxGkfSHAr+EM8MHBzktjfMX8YzYP0Th
         ty3iR9sqxUi6OcJM5cAJp5tmM4BxeAT5Op2Z2a1yko0mhyhim/hBJ3zwc7FGOBwdeBsO
         2y/WNoeQLWSfkdhJSdfJKQhu/cm7X/77Ncojseq07fUYIOYcP1B0BHPKGF11xrkBXb1s
         ucXeJDwbXhbCYVICFSAn6nVUy20odf/WEVv+VQEV5nkncVtQTOvZhWfft+/XlrtQe+qW
         PqwwV1J2EIMYS5bb0Nkzp0RCkGOKfPkC18E9/3A4/TzBa6e22Gt5L7o/pceG67QtBBH8
         K+xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UF7nR0RAhOzqdZkHDCQjiRJ4YI0fbLgTEln+9Hs89cc=;
        b=We78yykM0zVAWBRw5Lz3X4Y0g9f7pTzC3By7aLS+gSpN8iwn46jYi/Bqw4YajLv/LT
         0KmmbPvrABy8gydvqm3vyhJRDK6yyWlbAypKI8C9uKstXQ+Mk/G8RAPuTTgIFQHvmT7g
         yJsoT+EY1HrXYwtqzDzEkmVP0jRtSpCTRB9Z29IYnmYl4Xhn7Kmtym7OVeNBHRYDYpo7
         SknQFmnimgukA3TVHCUoH4gy5tiVjyFom56bPTiFq35sva+hdDwuPdEOaaVqGDmcDdyy
         getGlJNmkgJt7QwSq/HnG3JC4kJU4bbq1B4OEkFt0+ZbgZ2vlF0kMAroP+ta7/T5afdV
         RBbw==
X-Gm-Message-State: AO0yUKV0AE90kKTxgq/Qpmmg9IuH4ZpIIcGIhP5fgCEYfFys2iYZmHsQ
	hz5ScHLwyQmff+ZhSp683o8BNX2AwqR8JReo6Yw=
X-Google-Smtp-Source: AK7set8frmvxbkGuSlE/CZ3Cw8fhh0TWYwlF4WjVzZ12iA+f7NRi126FESxiqBxE2/sx2BJ0dkNHdIprSHLrN2hcU/w=
X-Received: by 2002:a05:6808:16ab:b0:37d:81a9:5103 with SMTP id
 bb43-20020a05680816ab00b0037d81a95103mr1454254oib.38.1677092270732; Wed, 22
 Feb 2023 10:57:50 -0800 (PST)
MIME-Version: 1.0
References: <20230218211608.1630586-1-robdclark@gmail.com> <20230218211608.1630586-2-robdclark@gmail.com>
 <b65a2fe2-6f68-2116-9599-2940e66d166b@linux.intel.com> <21f36640-3229-0b46-31a2-a47efc5be934@amd.com>
 <b8a16579-4be7-8e14-01e4-9d17c1570c8b@linux.intel.com> <CAJs_Fx61OpgFo_kSLoy+2z8mS=wcdK8eZfQBA6dQm9p0=qLU2g@mail.gmail.com>
 <d7b0614e-2cc3-1180-3571-409204ac5b00@linux.intel.com>
In-Reply-To: <d7b0614e-2cc3-1180-3571-409204ac5b00@linux.intel.com>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 22 Feb 2023 10:57:39 -0800
Message-ID: <CAF6AEGvyei6QcNGb-VEAuE5w4qJHavj+8TuirXwwcK7ydEXeSQ@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6B3943EBF1
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[chromium.org,amd.com,lists.freedesktop.org,padovan.org,intel.com,daenzer.net,vger.kernel.org,linaro.org,lists.linaro.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.174:from];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: YH4BXOPRPW4OXX5QNSO3UZL5XW2T4ZCC
X-Message-ID-Hash: YH4BXOPRPW4OXX5QNSO3UZL5XW2T4ZCC
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 01/14] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YH4BXOPRPW4OXX5QNSO3UZL5XW2T4ZCC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBGZWIgMjIsIDIwMjMgYXQgOTozMyBBTSBUdnJ0a28gVXJzdWxpbg0KPHR2cnRrby51
cnN1bGluQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+DQo+DQo+IE9uIDIyLzAyLzIwMjMgMTc6
MTYsIFJvYiBDbGFyayB3cm90ZToNCj4gPiBPbiBXZWQsIEZlYiAyMiwgMjAyMyBhdCA5OjA1IEFN
IFR2cnRrbyBVcnN1bGluDQo+ID4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4gd3Jv
dGU6DQo+ID4+DQo+ID4+DQo+ID4+IE9uIDIyLzAyLzIwMjMgMTU6MjgsIENocmlzdGlhbiBLw7Zu
aWcgd3JvdGU6DQo+ID4+PiBBbSAyMi4wMi4yMyB1bSAxMToyMyBzY2hyaWViIFR2cnRrbyBVcnN1
bGluOg0KPiA+Pj4+DQo+ID4+Pj4gT24gMTgvMDIvMjAyMyAyMToxNSwgUm9iIENsYXJrIHdyb3Rl
Og0KPiA+Pj4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4+
Pj4+DQo+ID4+Pj4+IEFkZCBhIHdheSB0byBoaW50IHRvIHRoZSBmZW5jZSBzaWduYWxlciBvZiBh
biB1cGNvbWluZyBkZWFkbGluZSwgc3VjaCBhcw0KPiA+Pj4+PiB2YmxhbmssIHdoaWNoIHRoZSBm
ZW5jZSB3YWl0ZXIgd291bGQgcHJlZmVyIG5vdCB0byBtaXNzLiAgVGhpcyBpcyB0byBhaWQNCj4g
Pj4+Pj4gdGhlIGZlbmNlIHNpZ25hbGVyIGluIG1ha2luZyBwb3dlciBtYW5hZ2VtZW50IGRlY2lz
aW9ucywgbGlrZSBib29zdGluZw0KPiA+Pj4+PiBmcmVxdWVuY3kgYXMgdGhlIGRlYWRsaW5lIGFw
cHJvYWNoZXMgYW5kIGF3YXJlbmVzcyBvZiBtaXNzaW5nIGRlYWRsaW5lcw0KPiA+Pj4+PiBzbyB0
aGF0IGNhbiBiZSBmYWN0b3JlZCBpbiB0byB0aGUgZnJlcXVlbmN5IHNjYWxpbmcuDQo+ID4+Pj4+
DQo+ID4+Pj4+IHYyOiBEcm9wIGRtYV9mZW5jZTo6ZGVhZGxpbmUgYW5kIHJlbGF0ZWQgbG9naWMg
dG8gZmlsdGVyIGR1cGxpY2F0ZQ0KPiA+Pj4+PiAgICAgICBkZWFkbGluZXMsIHRvIGF2b2lkIGlu
Y3JlYXNpbmcgZG1hX2ZlbmNlIHNpemUuICBUaGUgZmVuY2UtY29udGV4dA0KPiA+Pj4+PiAgICAg
ICBpbXBsZW1lbnRhdGlvbiB3aWxsIG5lZWQgc2ltaWxhciBsb2dpYyB0byB0cmFjayBkZWFkbGlu
ZXMgb2YgYWxsDQo+ID4+Pj4+ICAgICAgIHRoZSBmZW5jZXMgb24gdGhlIHNhbWUgdGltZWxpbmUu
ICBbY2tvZW5pZ10NCj4gPj4+Pj4gdjM6IENsYXJpZnkgbG9ja2luZyB3cnQuIHNldF9kZWFkbGlu
ZSBjYWxsYmFjaw0KPiA+Pj4+Pg0KPiA+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJv
YmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4+Pj4+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+ID4+Pj4+IC0tLQ0KPiA+Pj4+PiAgICBk
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAyMCArKysrKysrKysrKysrKysrKysrKw0KPiA+
Pj4+PiAgICBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oICAgfCAyMCArKysrKysrKysrKysrKysr
KysrKw0KPiA+Pj4+PiAgICAyIGZpbGVzIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKykNCj4gPj4+
Pj4NCj4gPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiA+Pj4+PiBpbmRleCAwZGUwNDgyY2QzNmUuLjc2
M2IzMjYyNzY4NCAxMDA2NDQNCj4gPj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jDQo+ID4+Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiA+Pj4+PiBA
QCAtOTEyLDYgKzkxMiwyNiBAQCBkbWFfZmVuY2Vfd2FpdF9hbnlfdGltZW91dChzdHJ1Y3QgZG1h
X2ZlbmNlDQo+ID4+Pj4+ICoqZmVuY2VzLCB1aW50MzJfdCBjb3VudCwNCj4gPj4+Pj4gICAgfQ0K
PiA+Pj4+PiAgICBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV93YWl0X2FueV90aW1lb3V0KTsNCj4g
Pj4+Pj4gICAgKw0KPiA+Pj4+PiArLyoqDQo+ID4+Pj4+ICsgKiBkbWFfZmVuY2Vfc2V0X2RlYWRs
aW5lIC0gc2V0IGRlc2lyZWQgZmVuY2Utd2FpdCBkZWFkbGluZQ0KPiA+Pj4+PiArICogQGZlbmNl
OiAgICB0aGUgZmVuY2UgdGhhdCBpcyB0byBiZSB3YWl0ZWQgb24NCj4gPj4+Pj4gKyAqIEBkZWFk
bGluZTogdGhlIHRpbWUgYnkgd2hpY2ggdGhlIHdhaXRlciBob3BlcyBmb3IgdGhlIGZlbmNlIHRv
IGJlDQo+ID4+Pj4+ICsgKiAgICAgICAgICAgIHNpZ25hbGVkDQo+ID4+Pj4+ICsgKg0KPiA+Pj4+
PiArICogSW5mb3JtIHRoZSBmZW5jZSBzaWduYWxlciBvZiBhbiB1cGNvbWluZyBkZWFkbGluZSwg
c3VjaCBhcw0KPiA+Pj4+PiB2YmxhbmssIGJ5DQo+ID4+Pj4+ICsgKiB3aGljaCBwb2ludCB0aGUg
d2FpdGVyIHdvdWxkIHByZWZlciB0aGUgZmVuY2UgdG8gYmUgc2lnbmFsZWQgYnkuDQo+ID4+Pj4+
IFRoaXMNCj4gPj4+Pj4gKyAqIGlzIGludGVuZGVkIHRvIGdpdmUgZmVlZGJhY2sgdG8gdGhlIGZl
bmNlIHNpZ25hbGVyIHRvIGFpZCBpbiBwb3dlcg0KPiA+Pj4+PiArICogbWFuYWdlbWVudCBkZWNp
c2lvbnMsIHN1Y2ggYXMgYm9vc3RpbmcgR1BVIGZyZXF1ZW5jeSBpZiBhIHBlcmlvZGljDQo+ID4+
Pj4+ICsgKiB2YmxhbmsgZGVhZGxpbmUgaXMgYXBwcm9hY2hpbmcuDQo+ID4+Pj4+ICsgKi8NCj4g
Pj4+Pj4gK3ZvaWQgZG1hX2ZlbmNlX3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwga3RpbWVfdCBkZWFkbGluZSkNCj4gPj4+Pj4gK3sNCj4gPj4+Pj4gKyAgICBpZiAoZmVuY2Ut
Pm9wcy0+c2V0X2RlYWRsaW5lICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQ0KPiA+
Pj4+PiArICAgICAgICBmZW5jZS0+b3BzLT5zZXRfZGVhZGxpbmUoZmVuY2UsIGRlYWRsaW5lKTsN
Cj4gPj4+Pj4gK30NCj4gPj4+Pj4gK0VYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3NldF9kZWFkbGlu
ZSk7DQo+ID4+Pj4+ICsNCj4gPj4+Pj4gICAgLyoqDQo+ID4+Pj4+ICAgICAqIGRtYV9mZW5jZV9k
ZXNjcmliZSAtIER1bXAgZmVuY2UgZGVzY3JpYnRpb24gaW50byBzZXFfZmlsZQ0KPiA+Pj4+PiAg
ICAgKiBAZmVuY2U6IHRoZSA2ZmVuY2UgdG8gZGVzY3JpYmUNCj4gPj4+Pj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+
ID4+Pj4+IGluZGV4IDc3NWNkYzBiNGYyNC4uZDc3ZjY1OTFjNDUzIDEwMDY0NA0KPiA+Pj4+PiAt
LS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+ID4+Pj4+ICsrKyBiL2luY2x1ZGUvbGlu
dXgvZG1hLWZlbmNlLmgNCj4gPj4+Pj4gQEAgLTk5LDYgKzk5LDcgQEAgZW51bSBkbWFfZmVuY2Vf
ZmxhZ19iaXRzIHsNCj4gPj4+Pj4gICAgICAgIERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwN
Cj4gPj4+Pj4gICAgICAgIERNQV9GRU5DRV9GTEFHX1RJTUVTVEFNUF9CSVQsDQo+ID4+Pj4+ICAg
ICAgICBETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwNCj4gPj4+Pj4gKyAgICBETUFf
RkVOQ0VfRkxBR19IQVNfREVBRExJTkVfQklULA0KPiA+Pj4+DQo+ID4+Pj4gV291bGQgdGhpcyBi
aXQgYmUgYmV0dGVyIGxlZnQgb3V0IGZyb20gY29yZSBpbXBsZW1lbnRhdGlvbiwgZ2l2ZW4gaG93
DQo+ID4+Pj4gdGhlIGFwcHJvYWNoIGlzIHRoZSBjb21wb25lbnQgd2hpY2ggaW1wbGVtZW50cyBk
bWEtZmVuY2UgaGFzIHRvIHRyYWNrDQo+ID4+Pj4gdGhlIGFjdHVhbCBkZWFkbGluZSBhbmQgYWxs
Pw0KPiA+Pj4+DQo+ID4+Pj4gQWxzbyB0YWtpbmcgYSBzdGVwIGJhY2sgLSBhcmUgd2UgYWxsIG9r
YXkgd2l0aCBzdGFydGluZyB0byBleHBhbmQgdGhlDQo+ID4+Pj4gcmVsYXRpdmVseSBzaW1wbGUg
Y29yZSBzeW5jaHJvbmlzYXRpb24gcHJpbWl0aXZlIHdpdGggc2lkZSBjaGFubmVsDQo+ID4+Pj4g
ZGF0YSBsaWtlIHRoaXM/IFdoYXQgd291bGQgYmUgdGhlIGNyaXRlcmlhIGZvciB3aGF0IHNpZGUg
Y2hhbm5lbCBkYXRhDQo+ID4+Pj4gd291bGQgYmUgYWNjZXB0YWJsZT8gVGFraW5nIG5vdGUgdGhl
IHRoaW5nIGxpdmVzIG91dHNpZGUgZHJpdmVycy9ncHUvLg0KPiA+Pj4NCj4gPj4+IEkgaGFkIHNp
bWlsYXIgY29uY2VybnMgYW5kIGl0IHRvb2sgbWUgYSBtb21lbnQgYXMgd2VsbCB0byB1bmRlcnN0
YW5kIHRoZQ0KPiA+Pj4gYmFja2dyb3VuZCB3aHkgdGhpcyBpcyBuZWNlc3NhcnkuIEkgZXNzZW50
aWFsbHkgZG9uJ3Qgc2VlIG11Y2ggb3RoZXINCj4gPj4+IGFwcHJvYWNoIHdlIGNvdWxkIGRvLg0K
PiA+Pj4NCj4gPj4+IFllcywgdGhpcyBpcyBHUFUvQ1JUQyBzcGVjaWZpYywgYnV0IHdlIHNvbWVo
b3cgbmVlZCBhIGNvbW1vbiBpbnRlcmZhY2UNCj4gPj4+IGZvciBjb21tdW5pY2F0aW5nIGl0IGJl
dHdlZW4gZHJpdmVycyBhbmQgdGhhdCdzIHRoZSBkbWFfZmVuY2Ugb2JqZWN0IGFzDQo+ID4+PiBm
YXIgYXMgSSBjYW4gc2VlLg0KPiA+Pg0KPiA+PiBZZWFoIEkgYWxzbyBkb24ndCBzZWUgYW55IG90
aGVyIGVhc3kgb3B0aW9ucy4gSnVzdCB3YW50ZWQgdG8gcmFpc2UgdGhpcw0KPiA+PiBhcyBzb21l
dGhpbmcgd2hpY2ggcHJvYmFibHkgbmVlZHMgc29tZSB3aWRlciBhY2tzLg0KPiA+Pg0KPiA+PiBB
bHNvIHdoYXQgYWJvdXQgdGhlICJsb3cgbGV2ZWwiIHBhcnQgb2YgbXkgcXVlc3Rpb24gYWJvdXQg
dGhlIHJlYXNvbiwgb3INCj4gPj4gYmVuZWZpdHMsIG9mIGRlZmluaW5nIHRoZSBkZWFkbGluZSBi
aXQgaW4gdGhlIGNvbW1vbiBsYXllcj8NCj4gPg0KPiA+IFdlIGNvdWxkIGxlYXZlIERNQV9GRU5D
RV9GTEFHX0hBU19ERUFETElORV9CSVQgb3V0LCBidXQgT1RPSCBtYW5hZ2luZw0KPiA+IGEgYml0
bWFzayB0aGF0IGlzIHBhcnRpYWxseSBkZWZpbmVkIGluIGNvcmUgZW51bSBhbmQgcGFydGlhbGx5
IGluDQo+ID4gYmFja2VuZC1kcml2ZXIgaGFzIGl0J3Mgb3duIGRyYXdiYWNrcywgYW5kIGl0IGlz
bid0IGxpa2Ugd2UgYXJlDQo+ID4gcnVubmluZyBvdXQgb2YgYml0cy4uIDpzaHJ1ZzoNCj4NCj4g
VGhlcmUgaXMgRE1BX0ZFTkNFX0ZMQUdfVVNFUl9CSVRTIG9ud2FyZHMgd2hpY2ggaW1wbGVtZW50
YXRpb25zIGNvdWxkDQo+IHVzZSB0byBzdG9yZSB0aGVpciBzdHVmZj8NCj4NCj4gQW5kIGlmIHdl
IHNraXAgZm9yd2FyZCB0byAiZHJtL3NjaGVkdWxlcjogQWRkIGZlbmNlIGRlYWRsaW5lIHN1cHBv
cnQiDQo+IHRoYXQncyB0aGUgb25seSBwbGFjZSBiaXQgaXMgdXNlZCwgcmlnaHQ/IFdvdWxkIGl0
IHNpbXBseSB3b3JrIHRvIGxvb2sNCj4gYXQgZHJtX3NjaGVkX2ZlbmNlLT5kZWFkbGluZSA9PSAw
IGFzIGJpdCBub3Qgc2V0PyBPciB5b3Ugc2VlIGEgbmVlZCB0bw0KPiBpbnRlcm9wZXJhdGUgd2l0
aCBvdGhlciBmZW5jZSBpbXBsZW1lbnRhdGlvbnMgdmlhIHRoYXQgYml0IHNvbWVob3c/DQoNCkN1
cnJlbnRseSBkcm0vc2NoZWR1bGVyIGlzIHRoZSBvbmx5IG9uZSB1c2luZyBpdC4gIEkgZW5kZWQg
dXAgZHJvcHBpbmcNCnVzZSBvZiBpdCBpbiBtc20gc2luY2UgdGhlIGRlYWRsaW5lIGlzIHN0b3Jl
ZCBpbiB0aGUgZmVuY2UtY29udGV4dA0KaW5zdGVhZC4gIEJ1dCBJIHRoaW5rIGl0IGlzIGJldHRl
ciB0byB0cnkgdG8gYXZvaWQgYXNzdW1pbmcgdGhhdCB6ZXJvDQptZWFucyBub3Qtc2V0Lg0KDQpJ
dCBjb3VsZCBiZSBtb3ZlZCB0byBkcm0vc2NoZWQuLiBJIGd1ZXNzIHRoZXJlIGFyZSBmZXcgZW5v
dWdoDQppbXBsZW1lbnRhdGlvbnMgYXQgdGhpcyBwb2ludCB0byBzYXkgd2hldGhlciBpdCBpcyBz
b21ldGhpbmcgdXNlZnVsIHRvDQpvdGhlciBkcml2ZXJzIG9yIG5vdC4NCg0KQlIsDQotUg0KDQo+
IFJlZ2FyZHMsDQo+DQo+IFR2cnRrbw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
