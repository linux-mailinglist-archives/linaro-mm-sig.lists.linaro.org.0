Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7845E638E58
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 17:40:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 858263EF32
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 16:40:14 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by lists.linaro.org (Postfix) with ESMTPS id 69E473ED3C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 16:40:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20210112.gappssmtp.com header.s=20210112 header.b=baCMPYRi;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.160.171) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qt1-f171.google.com with SMTP id c15so2811966qtw.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 08:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=M7vbIwl+/fvLQH2FFFO+pS8hv/f21DHk1Zk9oQnQSyg=;
        b=baCMPYRiGmv4nNjq0fISCCMILHJoCecvFoDJbM4uWRU/YmEDafEV6kcgM4L3vE/oBp
         KpodMp0IhnUahSEKrf7NLXAIipZo5D+3wsePZJmaDt1K+jAyQv1XEXnGXTjGKpU3XOT2
         8m31mL5YdkWGV/VZ339G1x3ZRUWLHfnu54MT7jwOvzohpR6NHexBG2cRh69Lq8OJKOST
         4KtMsf8AvGg4JTnc6Svyt9pWa8UzqmvceUaerMia9BoCaLi3HULwDCbZ0sy6n07LKX5U
         /hX4PvRnd9nD5zX+DDrpcodRUroRTuFSXm1knSWZ0Nx7Z1igEtNQWB87MBw9jiyodEPc
         +6Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M7vbIwl+/fvLQH2FFFO+pS8hv/f21DHk1Zk9oQnQSyg=;
        b=pV86SaAuuC1RINQfmcsWMo4HFLn/mLs6pqjCb3M5aaLkM0ZrES2X5nSFUuOTvqdJHy
         tarvtEnqMzl4oPPAYfXhwxbYwQpmBbIE9fDjgKCjOoZQU33DHlNCGke41FdbnqDHD5E7
         x9ConTm/8z7oVpsWZ4PIOCt2eSTn7z8R7eWkDQWujNeSAWaI3tSnCUoxUXnbIaeyMJl0
         6eAY1nJMj+gSbddudZzxoethIZt0vU9bu/GY76siZwpgN4l0+UJ+WTIRLHmW2bstMQpP
         4y1xMHS7YWWfSMkA1sPeNWd0NMlstbSRmbm98liF5livD45+o0oHnajl11yYyQ9l/cvB
         fxCg==
X-Gm-Message-State: ANoB5pnVXFazWcHZfGmFqOLns+zfuhOlhaCjh8Mgt7xaKwfa7EikL43U
	aBCg2W2FCOz6dJ11Ie/X2A0TxA==
X-Google-Smtp-Source: AA0mqf5GX0lNZDIsHrQa5Zn2FHtDVn1hNwF7Y79T83y4UcicdENZlRS6zqIBovKjG9S4bPGe3Mteag==
X-Received: by 2002:a05:622a:4d4e:b0:39a:78d4:57e with SMTP id fe14-20020a05622a4d4e00b0039a78d4057emr21097351qtb.118.1669394406051;
        Fri, 25 Nov 2022 08:40:06 -0800 (PST)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id k12-20020a05620a414c00b006fa22f0494bsm3071540qko.117.2022.11.25.08.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 08:40:05 -0800 (PST)
Message-ID: <ba6e42f04c436d93bfa71d5dee7fd35ef2245073.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Daniel Vetter <daniel@ffwll.ch>, Pekka Paalanen <ppaalanen@gmail.com>
Date: Fri, 25 Nov 2022 11:40:04 -0500
In-Reply-To: <Y35LcspZ385IC4lJ@phenom.ffwll.local>
References: <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com>
	 <0abc6efddb8dfc1888de15a1bedaaac6688fd078.camel@pengutronix.de>
	 <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com>
	 <CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
	 <b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com>
	 <346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
	 <CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
	 <Y3zeYnufgXJHQAbN@phenom.ffwll.local>
	 <ae9ba9ba-3ad3-af23-be66-1540862bf571@amd.com>
	 <20221123103338.238571e1@eldfell> <Y35LcspZ385IC4lJ@phenom.ffwll.local>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 69E473ED3C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_IN_DNSWL_HI(-1.00)[192.222.136.102:received,209.85.160.171:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20210112.gappssmtp.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.171:from];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,mail-qt1-f171.google.com:rdns,mail-qt1-f171.google.com:helo];
	R_SPF_NA(0.00)[no SPF record];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20210112.gappssmtp.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,chromium.org,pengutronix.de,fooishbar.org,linaro.org,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QZCLEPKA5PNWJIMCINTKJVYKRII5JAHS
X-Message-ID-Hash: QZCLEPKA5PNWJIMCINTKJVYKRII5JAHS
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Daniel Stone <daniel@fooishbar.org>, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QZCLEPKA5PNWJIMCINTKJVYKRII5JAHS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbWVyY3JlZGkgMjMgbm92ZW1icmUgMjAyMiDDoCAxNzozMyArMDEwMCwgRGFuaWVsIFZldHRl
ciBhIMOpY3JpdMKgOg0KPiBPbiBXZWQsIE5vdiAyMywgMjAyMiBhdCAxMDozMzozOEFNICswMjAw
LCBQZWtrYSBQYWFsYW5lbiB3cm90ZToNCj4gPiBPbiBUdWUsIDIyIE5vdiAyMDIyIDE4OjMzOjU5
ICswMTAwDQo+ID4gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3
cm90ZToNCj4gPiANCj4gPiA+IFdlIHNob3VsZCBoYXZlIGNvbWUgdXAgd2l0aCBkbWEtaGVhcHMg
ZWFybGllciBhbmQgbWFrZSBpdCBjbGVhciB0aGF0IA0KPiA+ID4gZXhwb3J0aW5nIGEgRE1BLWJ1
ZiBmcm9tIGEgZGV2aWNlIGdpdmVzIHlvdSBzb21ldGhpbmcgZGV2aWNlIHNwZWNpZmljIA0KPiA+
ID4gd2hpY2ggbWlnaHQgb3IgbWlnaHQgbm90IHdvcmsgd2l0aCBvdGhlcnMuDQo+ID4gPiANCj4g
PiA+IEFwYXJ0IGZyb20gdGhhdCBJIGFncmVlLCBETUEtYnVmIHNob3VsZCBiZSBjYXBhYmxlIG9m
IGhhbmRsaW5nIHRoaXMuIA0KPiA+ID4gUXVlc3Rpb24gbGVmdCBpcyB3aGF0IGRvY3VtZW50YXRp
b24gaXMgbWlzc2luZyB0byBtYWtlIGl0IGNsZWFyIGhvdyANCj4gPiA+IHRoaW5ncyBhcmUgc3Vw
cG9zZWQgdG8gd29yaz8NCj4gPiANCj4gPiBQZXJoYXBzIHNvbWV3aGF0IHJlbGF0ZWQgZnJvbSBE
YW5pZWwgU3RvbmUgdGhhdCBzZWVtcyB0byBoYXZlIGJlZW4NCj4gPiBmb3Jnb3R0ZW46DQo+ID4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjEwOTA1MTIyNzQyLjg2MDI5LTEt
ZGFuaWVsc0Bjb2xsYWJvcmEuY29tLw0KPiA+IA0KPiA+IEl0IGFpbWVkIG1vc3RseSBhdCB1c2Vy
c3BhY2UsIGJ1dCBzb3VuZHMgdG8gbWUgbGlrZSB0aGUgY29oZXJlbmN5IHN0dWZmDQo+ID4gY291
bGQgdXNlIGEgc2VjdGlvbiBvZiBpdHMgb3duIHRoZXJlPw0KPiANCj4gSG0geWVhaCBpdCB3b3Vs
ZCBiZSBncmVhdCB0byBsYW5kIHRoYXQgYW5kIHRoZW4gZXZlbnR1YWxseSBleHRlbmQuIERhbmll
bD8NCg0KVGhlcmUgaXMgYSBsb3Qgb2YgdGhpbmdzIGRvY3VtZW50ZWQgaW4gdGhpcyBkb2N1bWVu
dCB0aGF0IGhhdmUgYmVlbiBzYWlkIHRvIGJlDQpjb21wbGV0ZWx5IHdyb25nIHVzZXItc3BhY2Ug
YmVoYXZpb3VyIGluIHRoaXMgdGhyZWFkLiBCdXQgaXQgc2VlbXMgdG8gcHJlLWRhdGUNCnRoZSBE
TUEgSGVhcHMuIFRoZSBkb2N1bWVudCBhbHNvIGFzc3VtZSB0aGF0IERNQSBIZWFwcyBjb21wbGV0
ZWx5IHNvbHZlcyB0aGUgQ01BDQp2cyBzeXN0ZW0gbWVtb3J5IGlzc3VlLiBCdXQgaXQgYWxzbyB1
bmRlcmxpbmUgYSB2ZXJ5IGltcG9ydGFudCBhc3BlY3QsIHRoYXQNCnVzZXJsYW5kIGlzIG5vdCBh
d2FyZSB3aGljaCBvbmUgdG8gdXNlLiBXaGF0IHRoaXMgZG9jdW1lbnQgc3VnZ2VzdCB0aG91Z2gg
c2VlbXMNCm1vcmUgcmVhbGlzdCB0aGVuIHdoYXQgaGFzIGJlZW4gc2FpZCBoZXJlLg0KDQpJdHMg
b3ZlcmFsbCBhIGdyZWF0IGRvY3VtZW50LCBpdCB1bmZvcnR1bmF0ZSB0aGF0IGl0IG9ubHkgbWFr
ZXMgaXQgaW50byB0aGUgRFJNDQptYWlsaW5nIGxpc3QuDQoNCk5pY29sYXMNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
