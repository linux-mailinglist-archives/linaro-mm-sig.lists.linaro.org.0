Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7450B6BF23C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 21:17:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 566F03F52B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 20:17:09 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	by lists.linaro.org (Postfix) with ESMTPS id 8602B3F0AA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 20:16:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=h+Tg1fUe;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.160.53 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-17683b570b8so6884252fac.13
        for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 13:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679084210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UU4zAnrBSArmTn9XkYtMm4tlOOONjI66zlgaRxaRc2U=;
        b=h+Tg1fUeV3dUAxs/Bi8Ma5z5YKbULT93DkXk4MknB11o0s7K7bUtw7WwiTCGmzLO1N
         9rtPg85SUNu6+lcO2OTXDMyZdS5dM2epOg0pdSBBlejUGWWO403qdX2irSX+8WFDmqzG
         JGg+oyLM7HV8qGS6befsvU6P3GFyAlGjfWPaxg9+V/grsoPbxH5SCNX7Ev59ArGj9VWr
         4H06WZ66Id9hZ7xfDH0cjguCzaZEQcN5hMcR1HA0cxm1Ow/vl6aSXI3cVLrCUQJi3StQ
         SJE9RcSZR0gsqMA9i7j7Qe/a7+BsWrW1bfQpj66JJlHsHeHLkdYAPihwIzXNKEIkql4c
         Zgog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679084210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UU4zAnrBSArmTn9XkYtMm4tlOOONjI66zlgaRxaRc2U=;
        b=wAKhcEMYHGtx2B4UiPfoKJYGNySOSf77sOUFKhSUkUgb9AZ08KrN9DSJnASUbS3fJd
         p4ybYFX9fwMSkDQKHyelONkhJSopo8Y/QKcc0Y9kATOU2GxEVvBaCgsS8lF1H0yzHAvs
         58UsuZM42RBS1RnAf1uJrO7UcaBsNDp1jIx6YRPGmYtobDGzCTL/dwSVDMWJ/fDdCAwR
         lZ4/s7M9gkabAEd199JKeOc93pC+XR4HmUWN6eXpjF7ONYyfkYFr5y57QsrrIDcxoPi+
         7E+79mRXYhkhfTNVODbcwd/BkSn8/ty/rljWWNT3iitI9EX7mEtXJnnNUMEphwU95wqi
         QYBg==
X-Gm-Message-State: AO0yUKUqTy82DaIeGmeMErHXKJsNLQiskBlCS4iZCKnJ8pidjmxqWV89
	rdv0gx7+nwahUNwIgIHf3/EYFRJ+b9CifHpBzNA=
X-Google-Smtp-Source: AK7set+hgyDIxODQ1HpKvvctXRdJYouhJjfOaV7GujAUKXtOOfVz7wx7IEd/zYgoBBSWvGbON6Dc74JDF6R5s/Xnr+M=
X-Received: by 2002:a05:6870:1099:b0:17c:29d8:61ee with SMTP id
 25-20020a056870109900b0017c29d861eemr1596oaq.3.1679084208509; Fri, 17 Mar
 2023 13:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230317081718.2650744-1-lee@kernel.org> <20230317081718.2650744-4-lee@kernel.org>
In-Reply-To: <20230317081718.2650744-4-lee@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 17 Mar 2023 16:16:37 -0400
Message-ID: <CADnq5_PV2O3txzF7a2J4XYM6DWDPNqXWbBdJW8hi9ShS7L8EtA@mail.gmail.com>
To: Lee Jones <lee@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8602B3F0AA
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.53:from];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,vger.kernel.org,linaro.org,lists.linaro.org,ffwll.ch,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,ffwll.ch:email,amd.com:email,mail-oa1-f53.google.com:rdns,mail-oa1-f53.google.com:helo];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: JDXX4HT63QWY5R5I57RP2BWZJF5SXTAU
X-Message-ID-Hash: JDXX4HT63QWY5R5I57RP2BWZJF5SXTAU
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, "Pan, Xinhui" <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/37] drm/amd/amdgpu/amdgpu_device: Provide missing kerneldoc entry for 'reset_context'
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JDXX4HT63QWY5R5I57RP2BWZJF5SXTAU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KT24gRnJpLCBNYXIgMTcsIDIwMjMgYXQgNDoyMuKAr0FNIExl
ZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBGaXhlcyB0aGUgZm9sbG93aW5n
IFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToNCj4NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9kZXZpY2UuYzo1MTUyOg0KPiAgICB3YXJuaW5nOiBGdW5jdGlvbiBwYXJh
bWV0ZXIgb3IgbWVtYmVyICdyZXNldF9jb250ZXh0JyBub3QgZGVzY3JpYmVkIGluICdhbWRncHVf
ZGV2aWNlX2dwdV9yZWNvdmVyJw0KPg0KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1
Y2hlckBhbWQuY29tPg0KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQo+IENjOiAiUGFuLCBYaW5odWkiIDxYaW5odWkuUGFuQGFtZC5jb20+DQo+IENj
OiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0KPiBDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsQGZmd2xsLmNoPg0KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJv
Lm9yZz4NCj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5v
cmcNCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiBTaWduZWQtb2ZmLWJ5
OiBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYyB8IDEgKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNl
LmMNCj4gaW5kZXggZDQ1MTlmYmQ1MjZmMi4uZWYwYjI3ODc3OTZkYSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYw0KPiBAQCAtNTE0NSw2ICs1MTQ1
LDcgQEAgc3RhdGljIGlubGluZSB2b2lkIGFtZGdwdV9kZXZpY2Vfc3RvcF9wZW5kaW5nX3Jlc2V0
cyhzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldikNCj4gICAqDQo+ICAgKiBAYWRldjogYW1kZ3B1
X2RldmljZSBwb2ludGVyDQo+ICAgKiBAam9iOiB3aGljaCBqb2IgdHJpZ2dlciBoYW5nDQo+ICsg
KiBAcmVzZXRfY29udGV4dDogYW1kZ3B1IHJlc2V0IGNvbnRleHQgcG9pbnRlcg0KPiAgICoNCj4g
ICAqIEF0dGVtcHQgdG8gcmVzZXQgdGhlIEdQVSBpZiBpdCBoYXMgaHVuZyAoYWxsIGFzaWNzKS4N
Cj4gICAqIEF0dGVtcHQgdG8gZG8gc29mdC1yZXNldCBvciBmdWxsLXJlc2V0IGFuZCByZWluaXRp
YWxpemUgQXNpYw0KPiAtLQ0KPiAyLjQwLjAucmMxLjI4NC5nODgyNTRkNTFjNS1nb29nDQo+DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
