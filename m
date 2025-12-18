Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mF8eNdMJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:09:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B47D3411618
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:09:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C75944062A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:09:54 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by lists.linaro.org (Postfix) with ESMTPS id 2F96D3F76F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 13:55:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=XEVD22xJ;
	spf=pass (lists.linaro.org: domain of urezki@gmail.com designates 209.85.167.48 as permitted sender) smtp.mailfrom=urezki@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5943b62c47dso669571e87.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 05:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766066101; x=1766670901; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HDnXzSjtYaHM4x40x58+Blau4mKWsjcizNbfaizYC4s=;
        b=XEVD22xJQeqT67rNeay/vjdFBGjI6AIg+EpiFwIt9eL2UeBnfW0TW/QhhJhg5sbJMM
         /oEYA3HGCfv2wPNYaGEwCgsZi9a+RY8EpsG2gjZOFABEMHUtZn1bBP3NENs28Xm3F5ZC
         u8jIDLAPoi1Nh5/G+QH2FR8iaCgw8g6kouz/2UOZ2K+wR2NCB4B05jpO8vAxcNE77LPD
         8CnuBtV/RQWkS+C4qaMJfP/s78MO+4yDPuHx/DkjlUxHLK/b/VjTSpdR4x5z2suqL0qI
         OnkcmyHMkCzPNn0/wieZFg/4lfpxxh7d8CF2wjmOZWMxkXfz/FghMNZAwriO/7GEODhp
         a+cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766066101; x=1766670901;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HDnXzSjtYaHM4x40x58+Blau4mKWsjcizNbfaizYC4s=;
        b=AFHjFEfJMfRX55ho4jlc6KELb67pXkNm9fDMnVeS/o4mI8EBs+H+cs98BaqUXKAhHC
         +R12+o1szV6/mNzp4DjWF15Vjz4b6XUwkVeuSW40lno16shHpatqu1h8JGf4blh+BfYF
         XJnHZAilMH6XowIKChk9Zc6jyz/Gu6JEe7b/L80tU8xu+c2l5ouODcgUhZUeHA+qY9jz
         WMjbQmrAXu8lihiupMf/xfn+lJqz7pKaHFpRctwtlmSX+Z1TfI3xAnC9e275gvpp2+nB
         CpcALMPLGOZBOIam0hLwzer/EZFmaAT/bw28jbhAUq5aNh3U0wvnofQk0aNS6TYdWEtC
         C0lw==
X-Forwarded-Encrypted: i=1; AJvYcCU2FxbEiy1rNxlAE8TTfoAHARRdJtmh92e9Fp6Ww2aCgf+8lmJ13D58o0PYwFdg85OnpoB3vrxwwkNT2DUy@lists.linaro.org
X-Gm-Message-State: AOJu0YxmuWrDVkAL6ub+0bug7JUJzMgKJvvg5IXwyKDxNrSvCBxqGV1d
	XckhTe3VVXPadIQ11QyPkCIeBCvshlmG3xea3b2JqxGbxfrrdyNIImnw
X-Gm-Gg: AY/fxX4kVJS7szmWmak/Q3ZVYeQpl9snnPLUlhmzhboTYclJ074WIotW2PuCDzsYTpB
	38VpeivrmiqDOl3gqDN1f1UfYZpu4u1Ryx07d0boHukrz2X3dT7mC4FfCa4zaBCkN8QPE4o8iWA
	vTPuDBWsqO2zYsHcWoTjbL8NZ0pdeLRmg58zdBKp0sfndnSSNVIkqfUoaFa2QFZ0FMwhz9TQDcV
	YFo+6z0dxXpworIrRAokKHAU7nlQPhiEEnLwmZN424gElvVNd6vwHUol9JhCoSt0Iu/RjvqayYB
	jmPOTG3mZ0HxEtw8bhStjM+BuEZKD+2r9N+WnjTiD99BAamp7QEpCM2Iz2UiKnyHiKI3SdBBDFK
	wCm5QdVnzza4nroi3v8sI0fWF8I9hilcJckrtdl/4dV3e5l8oLmzv
X-Google-Smtp-Source: AGHT+IFEs/IPmhycLdgTpBPBgGa1eUvj3QCPpB/NO2gh7wKbNs6ilucY3zYK/1hGd6Pg8xIq9YxpJw==
X-Received: by 2002:a05:6512:6783:b0:596:51d0:9373 with SMTP id 2adb3069b0e04-598faa4d58emr5189309e87.24.1766066100616;
        Thu, 18 Dec 2025 05:55:00 -0800 (PST)
Received: from milan ([2001:9b1:d5a0:a500::24b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a13506b2dsm1116848e87.95.2025.12.18.05.54.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 05:55:00 -0800 (PST)
From: Uladzislau Rezki <urezki@gmail.com>
X-Google-Original-From: Uladzislau Rezki <urezki@milan>
Date: Thu, 18 Dec 2025 14:54:58 +0100
To: "David Hildenbrand (Red Hat)" <david@kernel.org>,
	Barry Song <21cnbao@gmail.com>
Message-ID: <aUQHss6K8b_esvpw@milan>
References: <20251215053050.11599-1-21cnbao@gmail.com>
 <e7c8478b-1ce4-4a15-a185-de9d9121438c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e7c8478b-1ce4-4a15-a185-de9d9121438c@kernel.org>
X-Spamd-Bar: ---
X-MailFrom: urezki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MYLALBSL6UIOOY66RZFZZXCOMQBH2IOX
X-Message-ID-Hash: MYLALBSL6UIOOY66RZFZZXCOMQBH2IOX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:53 +0000
CC: Barry Song <21cnbao@gmail.com>, akpm@linux-foundation.org, linux-mm@kvack.org, dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, Uladzislau Rezki <urezki@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maxime Ripard <mripard@kernel.org>, Tangquan Zheng <zhengtangquan@oppo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] mm/vmalloc: map contiguous pages in batches for vmap() whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MYLALBSL6UIOOY66RZFZZXCOMQBH2IOX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.19 / 15.00];
	DATE_IN_PAST(1.00)[2858];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.039];
	FROM_NEQ_ENVFROM(0.00)[urezki@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,kvack.org,lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,oppo.com,linaro.org,kernel.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oppo.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: B47D3411618
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBEZWMgMTgsIDIwMjUgYXQgMDI6MDE6NTZQTSArMDEwMCwgRGF2aWQgSGlsZGVuYnJh
bmQgKFJlZCBIYXQpIHdyb3RlOg0KPiBPbiAxMi8xNS8yNSAwNjozMCwgQmFycnkgU29uZyB3cm90
ZToNCj4gPiBGcm9tOiBCYXJyeSBTb25nIDx2LXNvbmdiYW9odWFAb3Bwby5jb20+DQo+ID4gDQo+
ID4gSW4gbWFueSBjYXNlcywgdGhlIHBhZ2VzIHBhc3NlZCB0byB2bWFwKCkgbWF5IGluY2x1ZGUg
aGlnaC1vcmRlcg0KPiA+IHBhZ2VzIGFsbG9jYXRlZCB3aXRoIF9fR0ZQX0NPTVAgZmxhZ3MuIEZv
ciBleGFtcGxlLCB0aGUgc3lzdGVtaGVhcA0KPiA+IG9mdGVuIGFsbG9jYXRlcyBwYWdlcyBpbiBk
ZXNjZW5kaW5nIG9yZGVyOiBvcmRlciA4LCB0aGVuIDQsIHRoZW4gMC4NCj4gPiBDdXJyZW50bHks
IHZtYXAoKSBpdGVyYXRlcyBvdmVyIGV2ZXJ5IHBhZ2UgaW5kaXZpZHVhbGx54oCUZXZlbiBwYWdl
cw0KPiA+IGluc2lkZSBhIGhpZ2gtb3JkZXIgYmxvY2sgYXJlIGhhbmRsZWQgb25lIGJ5IG9uZS4N
Cj4gPiANCj4gPiBUaGlzIHBhdGNoIGRldGVjdHMgaGlnaC1vcmRlciBwYWdlcyBhbmQgbWFwcyB0
aGVtIGFzIGEgc2luZ2xlDQo+ID4gY29udGlndW91cyBibG9jayB3aGVuZXZlciBwb3NzaWJsZS4N
Cj4gPiANCj4gPiBBbiBhbHRlcm5hdGl2ZSB3b3VsZCBiZSB0byBpbXBsZW1lbnQgYSBuZXcgQVBJ
LCB2bWFwX3NnKCksIGJ1dCB0aGF0DQo+ID4gY2hhbmdlIHNlZW1zIHRvIGJlIGxhcmdlIGluIHNj
b3BlLg0KPiA+IA0KPiA+IFdoZW4gdm1hcHBpbmcgYSAxMjhNQiBkbWEtYnVmIHVzaW5nIHRoZSBz
eXN0ZW1oZWFwLCB0aGlzIHBhdGNoDQo+ID4gbWFrZXMgc3lzdGVtX2hlYXBfZG9fdm1hcCgpIHJv
dWdobHkgMTfDlyBmYXN0ZXIuDQo+ID4gDQo+ID4gVy8gcGF0Y2g6DQo+ID4gWyAgIDEwLjQwNDc2
OV0gc3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDI0OTQwMDAgbnMNCj4gPiBbICAgMTIuNTI1OTIx
XSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMjQ2NzAwOCBucw0KPiA+IFsgICAxNC41MTczNDhd
IHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDcxMDA4IG5zDQo+ID4gWyAgIDE2LjU5MzQwNl0g
c3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDI0NDQwMDAgbnMNCj4gPiBbICAgMTkuNTAxMzQxXSBz
eXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMjQ4OTAwOCBucw0KPiA+IA0KPiA+IFcvbyBwYXRjaDoN
Cj4gPiBbICAgIDcuNDEzNzU2XSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgNDI2MjYwMDAgbnMN
Cj4gPiBbICAgIDkuNDI1NjEwXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgNDI1MDA5OTIgbnMN
Cj4gPiBbICAgMTEuODEwODk4XSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgNDIyMTUwMDggbnMN
Cj4gPiBbICAgMTQuMzM2NzkwXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgNDIxMzQ5OTIgbnMN
Cj4gPiBbICAgMTYuMzczODkwXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgNDI3NTAwMDAgbnMN
Cj4gPiANCj4gDQo+IFRoYXQncyBxdWl0ZSBhIHNwZWVkdXAuDQo+IA0KPiA+IENjOiBEYXZpZCBI
aWxkZW5icmFuZCA8ZGF2aWRAa2VybmVsLm9yZz4NCj4gPiBDYzogVWxhZHppc2xhdSBSZXpraSA8
dXJlemtpQGdtYWlsLmNvbT4NCj4gPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGlu
YXJvLm9yZz4NCj4gPiBDYzogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCj4gPiBD
YzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KPiA+IFRlc3RlZC1ieTogVGFu
Z3F1YW4gWmhlbmcgPHpoZW5ndGFuZ3F1YW5Ab3Bwby5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTog
QmFycnkgU29uZyA8di1zb25nYmFvaHVhQG9wcG8uY29tPg0KPiA+IC0tLQ0KPiA+ICAgKiBkaWZm
IHdpdGggcmZjOg0KPiA+ICAgTWFueSBjb2RlIHJlZmluZW1lbnRzIGJhc2VkIG9uIERhdmlkJ3Mg
c3VnZ2VzdGlvbnMsIHRoYW5rcyENCj4gPiAgIFJlZmluZSBjb21tZW50IGFuZCBjaGFuZ2Vsb2cg
YWNjb3JkaW5nIHRvIFVsYWR6aXNsYXUsIHRoYW5rcyENCj4gPiAgIHJmYyBsaW5rOg0KPiA+ICAg
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbW0vMjAyNTExMjIwOTAzNDMuODEyNDMtMS0y
MWNuYmFvQGdtYWlsLmNvbS8NCj4gPiANCj4gPiAgIG1tL3ZtYWxsb2MuYyB8IDQ1ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQ0KPiA+ICAgMSBmaWxlIGNoYW5n
ZWQsIDM5IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL21tL3ZtYWxsb2MuYyBiL21tL3ZtYWxsb2MuYw0KPiA+IGluZGV4IDQxZGQwMWU4NDMwYy4u
OGQ1Nzc3NjdhOWU1IDEwMDY0NA0KPiA+IC0tLSBhL21tL3ZtYWxsb2MuYw0KPiA+ICsrKyBiL21t
L3ZtYWxsb2MuYw0KPiA+IEBAIC02NDIsNiArNjQyLDI5IEBAIHN0YXRpYyBpbnQgdm1hcF9zbWFs
bF9wYWdlc19yYW5nZV9ub2ZsdXNoKHVuc2lnbmVkIGxvbmcgYWRkciwgdW5zaWduZWQgbG9uZyBl
bmQsDQo+ID4gICAJcmV0dXJuIGVycjsNCj4gPiAgIH0NCj4gPiArc3RhdGljIGlubGluZSBpbnQg
Z2V0X3ZtYXBfYmF0Y2hfb3JkZXIoc3RydWN0IHBhZ2UgKipwYWdlcywNCj4gPiArCQl1bnNpZ25l
ZCBpbnQgc3RyaWRlLCB1bnNpZ25lZCBpbnQgbWF4X3N0ZXBzLCB1bnNpZ25lZCBpbnQgaWR4KQ0K
PiA+ICt7DQo+ID4gKwlpbnQgbnJfcGFnZXMgPSAxOw0KPiANCj4gdW5zaWduZWQgaW50LCBtYXli
ZQ0KPiANCj4gV2h5IGFyZSB5b3UgaW5pdGlhbGl6aW5nIG5yX3BhZ2VzIHdoZW4geW91IG92ZXJ3
cml0ZSBpdCBiZWxvdz8NCj4gDQo+ID4gKw0KPiA+ICsJLyoNCj4gPiArCSAqIEN1cnJlbnRseSwg
YmF0Y2hpbmcgaXMgb25seSBzdXBwb3J0ZWQgaW4gdm1hcF9wYWdlc19yYW5nZQ0KPiA+ICsJICog
d2hlbiBwYWdlX3NoaWZ0ID09IFBBR0VfU0hJRlQuDQo+IA0KPiBJIGRvbid0IGtub3cgdGhlIGNv
ZGUgc28gcmVhbGl6aW5nIGhvdyB3ZSBnbyBmcm9tIHBhZ2Vfc2hpZnQgdG8gc3RyaWRlIHRvbw0K
PiBtZSBhIHNlY29uZC4gTWF5YmUgb25seSB0YWxrIGFib3V0IHN0cmlkZSBoZXJlPw0KPiANCj4g
T1RPSCwgaXMgInN0cmlkZSIgcmVhbGx5IHRoZSByaWdodCB0ZXJtaW5vbG9neT8NCj4gDQo+IHdl
IGNhbGN1bGF0ZSBpdCBhcw0KPiANCj4gCXN0cmlkZSA9IDFVIDw8IChwYWdlX3NoaWZ0IC0gUEFH
RV9TSElGVCk7DQo+IA0KPiBwYWdlX3NoaWZ0IC0gUEFHRV9TSElGVCBzaG91bGQgZ2l2ZSB1cyBh
biAib3JkZXIiLiBTbyBpcyB0aGlzIGENCj4gImdyYW51bGFyaXR5IiBpbiBucl9wYWdlcz8NCj4g
DQo+IEFnYWluLCBJIGRvbid0IGtub3cgdGhpcyBjb2RlLCBzbyBzb3JyeSBmb3IgdGhlIHF1ZXN0
aW9uLg0KPiANClRvIG1lICJzdHJpZGUiIGFsc28gc291bmRzIHVuY2xlYXIuDQoNCi0tDQpVbGFk
emlzbGF1IFJlemtpDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
