Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CFFAB1B67
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 19:13:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D32CA455C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 17:13:36 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id E85BB3F5B7
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 May 2025 17:13:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=eZsaNxTq;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cf3192d8bso1665e9.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 09 May 2025 10:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746810803; x=1747415603; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fgW/S+IuQhDMqkGx/1B5fC/F8bX0uong/zoW2X+2nEA=;
        b=eZsaNxTqNr8rgkPFyqfRodKPnaZheSYRRckvash2EA1AO1+FWBz02giJ5mCj3DbVuF
         FbNc2aeP5IIFaPPWB6P49ORfocT6OTgCeXfGtd/Br/VejTsJu42ETVScsI8LxYIsVxpF
         PlhVfEKxcYkQlNUAsjGHwRTULSlkndALnf8a6fDTGvC+CBHay8CbzM4At2RrPtyL2b+o
         HKW1aZq+z61FOpN2o0o3hGvBSmmrJYzcc6GuW/z9e6qFlkfM0QLGje96pBbqelgJrfmm
         LiFazfIusV8OfjdsoGCppTgFmz/Ec+FcmIKO7LBBIXwfie7SBoM67IhQ/S8z6u5dtH29
         bgWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746810803; x=1747415603;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fgW/S+IuQhDMqkGx/1B5fC/F8bX0uong/zoW2X+2nEA=;
        b=hUfaI4RBlAPejLca/LztnLRMe8rp/kjXm9FrIoFukmY4pDu4cqjb+HQadhS5Zj8EU6
         MWlPlKDphUDgxQW2EjfPtvtlIAMitPvjOSlYlj9e9jJJl2XlagGAxJMonfaxXujTc1fP
         QLc+xljHMhGdvIoKzsmUiFt5TGefrdFD0YVtmPnuI6ALGbYc2hRj3wuVw1wpXsGLToFD
         Ns4AWCdzwazl5/xTZZvngbYT/TqWBdJcOM0TinmQrlAi9RDbQ9NiHCkTrdSlG5gpb09I
         cVLJ6yneadsUxCAnOvViGD6NOqad6cegVKmO+B9fiVCyJa7u9wilT/fxv0Hldg2uDvzQ
         ZkuA==
X-Forwarded-Encrypted: i=1; AJvYcCUCHHOBEzorIstnmqJvQ1u3lF2aN6tLXTwZMItbs3XFUPA9aSsv7EEnTO2FjdjbDo+cZOLtf0k37199XtAb@lists.linaro.org
X-Gm-Message-State: AOJu0YySqoZUn90AuCopWEcntknIGH4coiSEMfLlAIUl2mbi8bbC/FaC
	vTuj+5fx4PKi6WVR38Llx7OsNbVG/e1lN5/BVP/Xlg3qW4qo6rzveDS9HyQTXHYDfjH++37cB2a
	tZSotj6KqRTa7144Znd0qOvOrsVIDsNXdwIDA
X-Gm-Gg: ASbGncs3yrsQqbt9Ysr2wZ54/fy0tlYB1JksfaDei7cERyGdNjdtQXp03ufzVZJeoQm
	pfxcYv3YAnOit0j2WQbll4qNJHWiMkEfA0XFdVT3UDVgLi2yHNmW+jwoqY00ghHq0ewgwInfaID
	9qFm2NN8HzYKfKqa9zYSW0iVDik85EjQo=
X-Google-Smtp-Source: AGHT+IHGfe/tXiaZqmJana79QrqFFike9FzFdHOfCIOTaVJ+13CLjx45F20TFT7eQCOyZ/XfQXSyYaW53E9ARHmgIFs=
X-Received: by 2002:a05:600c:3c95:b0:43b:c2cc:5075 with SMTP id
 5b1f17b1804b1-442d7c3bfd6mr1645325e9.5.1746810802780; Fri, 09 May 2025
 10:13:22 -0700 (PDT)
MIME-Version: 1.0
References: <20250508182025.2961555-1-tjmercier@google.com>
 <20250508182025.2961555-3-tjmercier@google.com> <CAPhsuW6cTCEwnbfRNX0KDGGs7M+N3xf+EP9FfS5Y_OHyXqs_Qw@mail.gmail.com>
In-Reply-To: <CAPhsuW6cTCEwnbfRNX0KDGGs7M+N3xf+EP9FfS5Y_OHyXqs_Qw@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 9 May 2025 10:13:10 -0700
X-Gm-Features: AX0GCFseXwp9JI9wID6QRkim2g6TRuMaRHnwPleWxRyNB1BiSXAGkZCVkEOBhEc
Message-ID: <CABdmKX1gxShJu3L11D0-hNMwRArJrzy1UMpuKJY-CSZvAfDh-Q@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E85BB3F5B7
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DNSWL_BLOCKED(0.00)[209.85.128.50:from];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,fomichev.me,fb.com];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 5DWILUOAWUMEJVTUYT3XRFC3NAMQTWLN
X-Message-ID-Hash: 5DWILUOAWUMEJVTUYT3XRFC3NAMQTWLN
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v4 2/5] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5DWILUOAWUMEJVTUYT3XRFC3NAMQTWLN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXkgOCwgMjAyNSBhdCA1OjI34oCvUE0gU29uZyBMaXUgPHNvbmdAa2VybmVsLm9y
Zz4gd3JvdGU6DQo+DQo+IE9uIFRodSwgTWF5IDgsIDIwMjUgYXQgMTE6MjDigK9BTSBULkouIE1l
cmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPiB3cm90ZToNCj4gPg0KPiA+IFRoZSBkbWFidWYg
aXRlcmF0b3IgdHJhdmVyc2VzIHRoZSBsaXN0IG9mIGFsbCBETUEgYnVmZmVycy4NCj4gPg0KPiA+
IERNQSBidWZmZXJzIGFyZSByZWZjb3VudGVkIHRocm91Z2ggdGhlaXIgYXNzb2NpYXRlZCBzdHJ1
Y3QgZmlsZS4gQQ0KPiA+IHJlZmVyZW5jZSBpcyB0YWtlbiBvbiBlYWNoIGJ1ZmZlciBhcyB0aGUg
bGlzdCBpcyBpdGVyYXRlZCB0byBlbnN1cmUgZWFjaA0KPiA+IGJ1ZmZlciBwZXJzaXN0cyBmb3Ig
dGhlIGR1cmF0aW9uIG9mIHRoZSBicGYgcHJvZ3JhbSBleGVjdXRpb24gd2l0aG91dA0KPiA+IGhv
bGRpbmcgdGhlIGxpc3QgbXV0ZXguDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBULkouIE1lcmNp
ZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+DQo+IEFja2VkLWJ5OiBTb25nIExpdSA8
c29uZ0BrZXJuZWwub3JnPg0KPg0KPiBXaXRoIG9uZSBuaXRwaWNrIGJlbG93Lg0KDQpUaGFua3Mh
DQoNCj4gPiAtLS0NCj4gWy4uLl0NCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEt
YnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPiA+IGluZGV4IDhmZjRhZGQ3MWY4OC4u
N2FmMmVhODM5ZjU4IDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+
ID4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4gPiBAQCAtNjM0LDQgKzYzNCw2IEBA
IGludCBkbWFfYnVmX3ZtYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21h
cCAqbWFwKTsNCj4gPiAgdm9pZCBkbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
LCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApOw0KPiA+ICBpbnQgZG1hX2J1Zl92bWFwX3VubG9ja2Vk
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCk7DQo+ID4gIHZv
aWQgZG1hX2J1Zl92dW5tYXBfdW5sb2NrZWQoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0
IGlvc3lzX21hcCAqbWFwKTsNCj4gPiArc3RydWN0IGRtYV9idWYgKmRtYV9idWZfaXRlcl9iZWdp
bih2b2lkKTsNCj4gPiArc3RydWN0IGRtYV9idWYgKmRtYV9idWZfaXRlcl9uZXh0KHN0cnVjdCBk
bWFfYnVmICpkbWJ1Zik7DQo+ID4gICNlbmRpZiAvKiBfX0RNQV9CVUZfSF9fICovDQo+ID4gZGlm
ZiAtLWdpdCBhL2tlcm5lbC9icGYvTWFrZWZpbGUgYi9rZXJuZWwvYnBmL01ha2VmaWxlDQo+ID4g
aW5kZXggNzA1MDJmMDM4YjkyLi4zYTMzNWM1MGU2ZTMgMTAwNjQ0DQo+ID4gLS0tIGEva2VybmVs
L2JwZi9NYWtlZmlsZQ0KPiA+ICsrKyBiL2tlcm5lbC9icGYvTWFrZWZpbGUNCj4gPiBAQCAtNTMs
NiArNTMsOSBAQCBvYmotJChDT05GSUdfQlBGX1NZU0NBTEwpICs9IHJlbG9fY29yZS5vDQo+ID4g
IG9iai0kKENPTkZJR19CUEZfU1lTQ0FMTCkgKz0gYnRmX2l0ZXIubw0KPiA+ICBvYmotJChDT05G
SUdfQlBGX1NZU0NBTEwpICs9IGJ0Zl9yZWxvY2F0ZS5vDQo+ID4gIG9iai0kKENPTkZJR19CUEZf
U1lTQ0FMTCkgKz0ga21lbV9jYWNoZV9pdGVyLm8NCj4gPiAraWZlcSAoJChDT05GSUdfRE1BX1NI
QVJFRF9CVUZGRVIpLHkpDQo+ID4gK29iai0kKENPTkZJR19CUEZfU1lTQ0FMTCkgKz0gZG1hYnVm
X2l0ZXIubw0KPiA+ICtlbmRpZg0KPiA+DQo+ID4gIENGTEFHU19SRU1PVkVfcGVyY3B1X2ZyZWVs
aXN0Lm8gPSAkKENDX0ZMQUdTX0ZUUkFDRSkNCj4gPiAgQ0ZMQUdTX1JFTU9WRV9icGZfbHJ1X2xp
c3QubyA9ICQoQ0NfRkxBR1NfRlRSQUNFKQ0KPiA+IGRpZmYgLS1naXQgYS9rZXJuZWwvYnBmL2Rt
YWJ1Zl9pdGVyLmMgYi9rZXJuZWwvYnBmL2RtYWJ1Zl9pdGVyLmMNCj4gPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uOTZiNGJhN2YwYjJjDQo+ID4gLS0tIC9k
ZXYvbnVsbA0KPiA+ICsrKyBiL2tlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYw0KPiA+IEBAIC0wLDAg
KzEsMTAyIEBADQo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkN
Cj4gPiArLyogQ29weXJpZ2h0IChjKSAyMDI1IEdvb2dsZSBMTEMgKi8NCj4gPiArI2luY2x1ZGUg
PGxpbnV4L2JwZi5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvYnRmX2lkcy5oPg0KPiA+ICsjaW5j
bHVkZSA8bGludXgvZG1hLWJ1Zi5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgva2VybmVsLmg+DQo+
ID4gKyNpbmNsdWRlIDxsaW51eC9zZXFfZmlsZS5oPg0KPiA+ICsNCj4gPiArQlRGX0lEX0xJU1Rf
U0lOR0xFKGJwZl9kbWFidWZfYnRmX2lkLCBzdHJ1Y3QsIGRtYV9idWYpDQo+ID4gK0RFRklORV9C
UEZfSVRFUl9GVU5DKGRtYWJ1Ziwgc3RydWN0IGJwZl9pdGVyX21ldGEgKm1ldGEsIHN0cnVjdCBk
bWFfYnVmICpkbWFidWYpDQo+DQo+IG5pdDogSXQgaXMgYmV0dGVyIHRvIG1vdmUgdGhlc2UgdHdv
IGxpbmVzIGxhdGVyLCB0byB3aGVyZSB0aGV5DQo+IGFyZSBhYm91dCB0byBiZSB1c2VkLg0KDQpJ
J3ZlIG1vdmVkIHRoZW0gYm90aCB0byBqdXN0IGJlZm9yZSBkbWFidWZfaXRlcl9pbml0KCkgZmFy
dGhlciBkb3duLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
