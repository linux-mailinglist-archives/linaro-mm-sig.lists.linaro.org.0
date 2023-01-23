Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 455B0677D5A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 15:01:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E930443BE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 14:01:02 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id 90F553EBC6
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 14:00:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=NKgYiAT1;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C3F002D9;
	Mon, 23 Jan 2023 15:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1674482445;
	bh=U4yb+8cDXDgj8BhmM9epd1Tu+axcS8mTstrARnltOj8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NKgYiAT1ADsuvzALI1LW26Rc8OpRcKiQnn41FmbNAizL6FiDNEFXrSlymvbo3qeSD
	 KdPnm6Qq2UjcqlNuqHp2tO8JVOpWcfQdXbq0c8+PGeM6pdY+sntRh6PfydqLo62/FC
	 v9MxTa33ZrTQtYw6WrUIyFLie/vqqDAqjMlaYGB0=
Date: Mon, 23 Jan 2023 16:00:40 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Y86TCFUYsWdDNDPP@pendragon.ideasonboard.com>
References: <20230123123756.401692-1-christian.koenig@amd.com>
 <20230123123756.401692-3-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230123123756.401692-3-christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 90F553EBC6
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[213.243.189.158:received,213.167.242.64:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,codeaurora.org,arm.com,google.com,kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[ideasonboard.com];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
Message-ID-Hash: ZTOHU5JOAPVIMGFIHQPVAYXM6ONJ2P4L
X-Message-ID-Hash: ZTOHU5JOAPVIMGFIHQPVAYXM6ONJ2P4L
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: nicolas@ndufresne.ca, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, tfiga@chromium.org, sebastian.wick@redhat.com, hverkuil@xs4all.nl, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, benjamin.gaignard@collabora.com, lmark@codeaurora.org, labbott@redhat.com, Brian.Starkey@arm.com, jstultz@google.com, mchehab@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] media: uvcvideo: expose dma-heap hint to userspace
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZTOHU5JOAPVIMGFIHQPVAYXM6ONJ2P4L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4NCg0KT24gTW9uLCBKYW4g
MjMsIDIwMjMgYXQgMDE6Mzc6NTZQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4g
RXhwb3NlIGFuIGluZGljYXRvciB0byBsZXQgdXNlcnNwYWNlIGtub3cgZnJvbSB3aGljaCBkbWFf
aGVhcA0KPiB0byBhbGxvY2F0ZSBmb3IgYnVmZmVycyBvZiB0aGlzIGRldmljZS4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL21lZGlhL3VzYi91dmMvdXZjX2RyaXZlci5jIHwgMTEgKysrKysr
KysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS91c2IvdXZjL3V2Y19kcml2ZXIuYyBiL2RyaXZlcnMvbWVkaWEv
dXNiL3V2Yy91dmNfZHJpdmVyLmMNCj4gaW5kZXggZTRiY2I1MDExMzYwLi5iMjQ3MDI2YjY4YzUg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvdXNiL3V2Yy91dmNfZHJpdmVyLmMNCj4gKysr
IGIvZHJpdmVycy9tZWRpYS91c2IvdXZjL3V2Y19kcml2ZXIuYw0KPiBAQCAtNyw2ICs3LDcgQEAN
Cj4gICAqLw0KPiAgDQo+ICAjaW5jbHVkZSA8bGludXgvYXRvbWljLmg+DQo+ICsjaW5jbHVkZSA8
bGludXgvZG1hLWhlYXAuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+DQo+
ICAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvbGlzdC5oPg0K
PiBAQCAtMTkwOSw2ICsxOTEwLDggQEAgc3RhdGljIHZvaWQgdXZjX3VucmVnaXN0ZXJfdmlkZW8o
c3RydWN0IHV2Y19kZXZpY2UgKmRldikNCj4gIA0KPiAgCWlmIChkZXYtPnZkZXYuZGV2KQ0KPiAg
CQl2NGwyX2RldmljZV91bnJlZ2lzdGVyKCZkZXYtPnZkZXYpOw0KPiArCWRtYV9oZWFwX3JlbW92
ZV9kZXZpY2VfbGluaygmZGV2LT51ZGV2LT5kZXYpOw0KPiArDQoNCkNvdWxkIHdlIGF2b2lkIGhh
dmluZyB0byBjYWxsIHRoaXMgZXhwbGljaXRseSBpbiBkcml2ZXJzLCBwb3NzaWJseSB1c2luZw0K
ZGV2cmVzIGluIGRtYV9oZWFwX2NyZWF0ZV9kZXZpY2VfbGluaygpID8NCg0KPiAgI2lmZGVmIENP
TkZJR19NRURJQV9DT05UUk9MTEVSDQo+ICAJaWYgKG1lZGlhX2Rldm5vZGVfaXNfcmVnaXN0ZXJl
ZChkZXYtPm1kZXYuZGV2bm9kZSkpDQo+ICAJCW1lZGlhX2RldmljZV91bnJlZ2lzdGVyKCZkZXYt
Pm1kZXYpOw0KPiBAQCAtMjE4MSw2ICsyMTg0LDE0IEBAIHN0YXRpYyBpbnQgdXZjX3Byb2JlKHN0
cnVjdCB1c2JfaW50ZXJmYWNlICppbnRmLA0KPiAgCQkJIGRldi0+dXZjX3ZlcnNpb24gPj4gOCwg
ZGV2LT51dmNfdmVyc2lvbiAmIDB4ZmYpOw0KPiAgCX0NCj4gIA0KPiArCS8qDQo+ICsJICogVVZD
IGV4cG9ydHMgRE1BLWJ1ZiBidWZmZXJzIHdpdGggZGlydHkgQ1BVIGNhY2hlcy4gRm9yIGNvbXBh
dGliaWxpdHkNCj4gKwkgKiB3aXRoIGRldmljZSB3aGljaCBjYW4ndCBzbm9vcCB0aGUgQ1BVIGNh
Y2hlIGl0J3MgYmVzdCBwcmFjdGljZSB0bw0KPiArCSAqIGFsbG9jYXRlIERNQS1idWZzIGZyb20g
dGhlIHN5c3RlbSBETUEtaGVhcC4NCj4gKwkgKi8NCj4gKwlpZiAoZG1hX2hlYXBfY3JlYXRlX2Rl
dmljZV9saW5rKCZkZXYtPnVkZXYtPmRldiwgInN5c3RlbSIpKQ0KDQpJIGRvbid0IHRoaW5rIHRo
aXMgaXMgdGhlIHJpZ2h0IGRldmljZS4gQSBVVkMgZGV2aWNlIGlzIHVzdWFsbHkgYQ0KY29tcG9z
aXRlIFVTQiBkZXZpY2Ugd2l0aCBhbiBhdWRpbyAoVUFDKSBmdW5jdGlvbiBpbiBhZGRpdGlvbiB0
byBVVkMsDQphbmQgdGhhdCBtYXkgcmVxdWlyZSBhIGRpZmZlcmVudCBoZWFwIChhdCBsZWFzdCBj
b25jZXB0dWFsbHkpLiBXb3VsZG4ndA0KdGhlIHZpZGVvX2RldmljZSBiZSBhIGJldHRlciBjYW5k
aWRhdGUgdG8gZXhwb3NlIHRoZSBsaW5rID8gVGhpcyB3b3VsZA0KY3JlYXRlIGEgcmFjZSBjb25k
aXRpb24gdGhvdWdoLCBhcyB0aGUgbGluayB3aWxsIGJlIGNyZWF0ZWQgYWZ0ZXINCnVzZXJzcGFj
ZSBnZXRzIG5vdGlmaWVkIG9mIHRoZSBkZXZpY2UgYmVpbmcgYXZhaWxhYmxlLg0KDQo+ICsJCWdv
dG8gZXJyb3I7DQo+ICsNCj4gIAkvKiBSZWdpc3RlciB0aGUgVjRMMiBkZXZpY2UuICovDQo+ICAJ
aWYgKHY0bDJfZGV2aWNlX3JlZ2lzdGVyKCZpbnRmLT5kZXYsICZkZXYtPnZkZXYpIDwgMCkNCj4g
IAkJZ290byBlcnJvcjsNCg0KLS0gDQpSZWdhcmRzLA0KDQpMYXVyZW50IFBpbmNoYXJ0DQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
