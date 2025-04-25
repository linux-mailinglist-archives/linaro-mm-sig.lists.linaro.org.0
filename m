Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EF055A9D1EE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Apr 2025 21:40:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 70F8C3F549
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Apr 2025 19:40:09 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by lists.linaro.org (Postfix) with ESMTPS id 987933F39C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Apr 2025 19:39:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=p2hVclS6;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.167.42 as permitted sender) smtp.mailfrom=jstultz@google.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-54afb5fcebaso2947182e87.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Apr 2025 12:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745609994; x=1746214794; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dfSIX9jpfiWRSxgHFlpEDElrGRa3eqYVEWZZrqsW9bI=;
        b=p2hVclS6suc7ycwBCuJKbkewHw6BvEqGoJJH6PJk8yWh++DMce7A+hGmPOkyW0lTOv
         A/oYXwTmgY8xnyaMJ2fZnPzHLPgrItb1tusXrbzC4v4e840j4j/Spq76AnGPK1kdlwFg
         dekRgMMAJUB+Lshfwrqq/LeHVb9RVnp/+C1yh6NDgDyv/mbah6O00HmOQ8geUa1PAdrr
         FzXPLCaBEwoMMppY26B0NRWM80X/B9u0Ah/uiy0L6b+oFNF/bcck0Jedya3yfscrKp67
         NbbgvM6TpEHQ5dxN+97Bru6Uc/84djyJEf/Rjv4BfbjpRZzCIMpJ3FQ6su1Ah38uEbo0
         kZDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745609994; x=1746214794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dfSIX9jpfiWRSxgHFlpEDElrGRa3eqYVEWZZrqsW9bI=;
        b=Bve45OUXPouHfj9JaKcabUXygFWPVrNINjC8krsJVLFkL8h1/lHgovVe75Qu3IxibX
         3PzqkADYIeBZzT6Xi/V5V5+MIcvA+GpHuJYssJkSZyWySg0Xj85PFrgCGdp8wZgEfEy/
         hr7B0ujfqiN6AcAGJemHNnXGYu+ftddnyfoPj8SBkyzvhAESjRusay9cB7Hqp1h8eznf
         y0VsnTLqdLP+ztyeRLXHGrBfEnovO1NxyQ/4UeHIGD0YGoe+VDNXXGmgTgaXtFOKIlmK
         xXPutdUQsJ6cETxTxXBai+EwY3v2YJuJ7//9WWn9BwDf07zZskQug3xCL99iaXnNAQS8
         rDmw==
X-Forwarded-Encrypted: i=1; AJvYcCUtKlLgOoeBfVvtUvcv6uyvOstxrb/rbMje28SFOsb16hH7RVg0GwdCNuI6z8sFo3upf5ITMHu6z3qN4JGZ@lists.linaro.org
X-Gm-Message-State: AOJu0Yx5++T+n9fzfGbhhDc8KMGT/JtvVTWuagxZ1BnWEervXTInCHj2
	M96+ato2LSRLYhSUW4yMEmN2ektE6pTa34+uV8r/0q3hHVJrqAm1yWtkrNAhnOGW5dV2zdua4iD
	nZ0Rm7iRp52wPpgLDnOntneQgRqhF274EHs0=
X-Gm-Gg: ASbGncuNo/UWvcbCyuLBSngetPNy6cgpD4PqBRme/ulZ4J89U63RcTsw6ZUn26Lddaa
	TDOaVMYQk67C/jyPxX4qZdG7QY3zJLS5J2SXcxsZlf0SBBIIvUNa5ns75UiT4z3Swb916wIr0Rh
	AP9NCuHCPWr4ZaE4+izda7z8RIN1ClqgBxkECbISBqISb9yjxoF7E=
X-Google-Smtp-Source: AGHT+IHUbAh5N12vJaC4y50M7cNDxVxLCPYrcMSTN18M4pC1Y8L+yTG0UPsfIVPETtsJQssOgUaeDFzFHB1JvR/EmjM=
X-Received: by 2002:a05:6512:239f:b0:549:8db6:b2dd with SMTP id
 2adb3069b0e04-54e8cbe0789mr1187301e87.31.1745609994088; Fri, 25 Apr 2025
 12:39:54 -0700 (PDT)
MIME-Version: 1.0
References: <20250422191939.555963-1-jkangas@redhat.com> <20250422191939.555963-3-jkangas@redhat.com>
 <20250424-sassy-cunning-pillbug-ffde51@houat> <CANDhNCqfsUbN3aavAH5hi4wdcKuUkjLX4jqhKzy-q+jCEqpoow@mail.gmail.com>
 <20250425-savvy-chubby-alpaca-0196e3@houat>
In-Reply-To: <20250425-savvy-chubby-alpaca-0196e3@houat>
From: John Stultz <jstultz@google.com>
Date: Fri, 25 Apr 2025 12:39:40 -0700
X-Gm-Features: ATxdqUERSINXjgZozjhH6OJicqqRpLdRfV1ZPdW61MN5MO_O8cl1SzEcLT4val0
Message-ID: <CANDhNCroe6ZBtN_o=c71kzFFaWK-fF5rCdnr9P5h1sgPOWSGSw@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 987933F39C
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.167.42:from];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.42:from];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.167.42:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 5J2NXFDCGGDFDWT5ZRLHMU4M4Y23UWNG
X-Message-ID-Hash: 5J2NXFDCGGDFDWT5ZRLHMU4M4Y23UWNG
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jared Kangas <jkangas@redhat.com>, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: heaps: Give default CMA heap a fixed name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5J2NXFDCGGDFDWT5ZRLHMU4M4Y23UWNG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBcHIgMjQsIDIwMjUgYXQgMTE6NTjigK9QTSBNYXhpbWUgUmlwYXJkIDxtcmlwYXJk
QGtlcm5lbC5vcmc+IHdyb3RlOg0KPiBPbiBUaHUsIEFwciAyNCwgMjAyNSBhdCAwNToxMzo0N1BN
IC0wNzAwLCBKb2huIFN0dWx0eiB3cm90ZToNCj4gPiBPbiBUaHUsIEFwciAyNCwgMjAyNSBhdCAx
OjM04oCvQU0gTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPiB3cm90ZToNCj4gPiA+
IEkgYXBwcmVjaWF0ZSB0aGlzIGlzIGtpbmQgb2YgYmlrZXNoZWQtY29sb3IgdGVycml0b3J5LCBi
dXQgSSB0aGluayAiY21hIg0KPiA+ID4gd291bGQgYmUgYSBiZXR0ZXIgb3B0aW9uIGhlcmUuIFRo
ZXJlJ3Mgbm90aGluZyAiZGVmYXVsdCIgYWJvdXQgaXQuDQo+ID4NCj4gPiBJIGRpc2FncmVlLiAg
SXQgdmVyeSBtdWNoIGlzICJkZWZhdWx0IiBhcyBpdCdzIHJldHVybmluZyB0aGUNCj4gPiBkbWFf
Y29udGlndW91c19kZWZhdWx0X2FyZWEuDQo+DQo+IE15IG1haW4gY29uY2VybiBoZXJlIGlzIHRo
YXQgaXQncyAiZGVmYXVsdCIgYXMgb3Bwb3NlZCB0byB3aGF0LCBleGFjdGx5Pw0KPiBXZSBoYXZl
IGEgc2luZ2xlIENNQSBhbGxvY2F0b3IuIFdlIGNvdWxkIGhhdmUgbXVsdGlwbGUgYnVmZmVyDQo+
IGF0dHJpYnV0ZXMsIGJ1dCB0aGVuICJjYWNoZWRfY21hIiB3b3VsZCBtYWtlIG1vcmUgc2Vuc2Ug
dG8gbWUgaWYgd2UNCj4gZXhwZWN0IHRvIGhhdmUgdW5jYWNoZWQgQ01BIGFsbG9jYXRpb25zIGF0
IHNvbWUgcG9pbnQuDQoNCldlbGwsIHRoZXJlIG1heSBiZSBvbmUgQ01BIGFsbG9jYXRvciwgYnV0
IHRoZXJlIGNhbiBiZSBtdWx0aXBsZSBDTUEgcmVnaW9ucy4NCg0KU28gaW4gdGhlIGtlcm5lbCwg
Y21hX2FsbG9jKCkgYWx3YXlzIHRha2VzIHRoZSBjbWEgYXJlYSBhcyBhbg0KYXJndW1lbnQuICBB
bmQgZG1hX2FsbG9jX2NvbnRpZ3VvdXMoKSBsZXRzIHlvdSBkbyBhbGxvY2F0aW9ucyBhZ2FpbnN0
DQphIGRldmljZSwgd2hpY2ggbWF5IHJlZmVyZW5jZSBhIHNwZWNpZmljIGNtYSBhcmVhLiBPciBp
ZiB0aGUgZGV2aWNlDQpkb2Vzbid0IHNwZWNpZnkgYSByZWdpb24gaXQgd2lsbCB1dGlsaXplIHRo
ZSBkZWZhdWx0IHJlZ2lvbi4NCg0KPiA+IFRoZXJlIGNhbiBiZSBtdWx0aXBsZSBDTUEgYXJlYXMs
IGFuZCBvdXQgb2YgdHJlZSwgdmVuZG9ycyBkbyByZXNlcnZlDQo+ID4gc2VwYXJhdGUgYXJlYXMg
Zm9yIHNwZWNpZmljIHB1cnBvc2VzLCBleHBvc2luZyBtdWx0aXBsZSBDTUEgZG1hYnVmDQo+ID4g
aGVhcHMuDQo+DQo+IEJ5ICJDTUEgYXJlYXMiLCBJIGd1ZXNzIHlvdSBtZWFuIGNhcnZlZC1vdXQg
bWVtb3J5IHJlZ2lvbnM/IElmIHNvLCBob3cNCj4gaXMgaXQgcmVsZXZhbnQgdG8gdXNlcnNwYWNl
IGlmIHdlIHVzZSBDTUEgb3IgYW55IG90aGVyIGltcGxlbWVudGF0aW9uIHRvDQo+IGV4cG9zZSBh
IGNhcnZlZC1vdXQgcmVnaW9uLCBhbmQgdGh1cyB0aGF0IHdlIGNhcnJ5IHRoYXQgaW1wbGVtZW5h
dHRpb24NCj4gZGV0YWlsIGluIHRoZSBuYW1lPw0KDQpTbywgbm8sIEkgZG9uJ3QgbWVhbiBjYXJ2
ZS1vdXQgcmVnaW9ucy4gIEl0J3MgbW9yZSBhYm91dCBkZWFsaW5nIHdpdGgNCmNvbXBldGl0aW9u
IGJldHdlZW4gbXVsdGlwbGUgQ01BIHVzZXJzLiBJbiBzb21lIGNhc2VzLCB3aGVyZSB0aGVyZSBh
cmUNCmtub3duIGZpeGVkIGJ1ZmZlciBzaXplcywgc2F5IGNhbWVyYSBidWZmZXJzLCBpdCdzIG11
Y2ggZWFzaWVyIHRvDQpyZXNlcnZlIGEgc2VwYXJhdGUgc3BlY2lmaWMgc2l6ZWQgcmVnaW9uIHRv
IGFsbG9jYXRlIGZyb20gc28gdGhhdCB5b3UNCmtub3cgaXQgd2lsbCBhbHdheXMgc3VjY2VlZCBh
bmQgeW91IGRvbid0IG5lZWQgdG8gd2FzdGUgbXVjaCBvbiBzYWZldHkNCm1hcmdpbnMuIEhhdmlu
ZyB0aGlzIGFkZGVkIGFzIGEgc2VwYXJhdGUgQ01BIHJlZ2lvbiBtYWtlcyBpdCBhIGxvdA0KZWFz
aWVyIHRvIGFjY291bnQgb3IgcmVhc29uIGFib3V0LCBhbmQgdGhlIGtlcm5lbCBjYW4gc3RpbGwg
bWFrZQ0KKGxpbWl0ZWQpIHVzZSBvZiB0aGUgQ01BIHNwYWNlIHdoZW4gaXQncyBpZGxlLiBUaGVu
IHlvdSBkb24ndCBoYXZlIHRvDQp3b3JyeSBhYm91dCBzb21lIG90aGVyIGRldmljZSBoYXZpbmcg
YSBzaG9ydCB0ZXJtIGNtYSBhbGxvY2F0aW9uIHRoYXQNCnB1c2hlcyBiYWNrIHRoZSBhbGlnbm1l
bnQgZm9yIHlvdXIgbGFyZ2UgYWxsb2NhdGlvbiwgcG9zc2libHkNCmltcGFjdGluZyBzb21lIG90
aGVyIGRldmljZXMgbGFyZ2VyIGFsbG9jYXRpb25zLg0KDQpBbmQgdW5saWtlIHdpdGgganVzdCB1
c2luZyBhIGNhcnZlb3V0LCB5b3UgZG9uJ3QgZW5kIHVwIGp1c3Qgd2FzdGluZw0KYWxsIHRoYXQg
c3BhY2Ugd2hlbiBpdCBpcyB1bnVzZWQuDQoNClNvIHVzZXJsYW5kIG1heSB3YW50IHRvIGFsbG9j
YXRlIGNvbnRpZ3VvdXMgbWVtb3J5LCBidXQgaXQgbWF5IGFsc28gYmUNCnJlbGV2YW50IHRvIHVz
ZXJsYW5kIHRvIGJlIGFibGUgdG8gYWxsb2NhdGUgY29udGlndW91cyBtZW1vcnkgZnJvbSBhDQpw
dXJwb3NlIHNwZWNpZmljIHBvb2wuDQoNCkFuZCB3aGlsZSBub3QgdXNlZCBpbiBBbmRyb2lkLCB5
b3UgY291bGQgaW1hZ2luZSBoYXZpbmcgc2VwYXJhdGUNCnB1cnBvc2UgcmVzZXJ2ZWQgY21hIGhl
YXBzIHdpdGggZGlmZmVyZW50IHBlcm1pc3Npb25zIG9uIHRoZSBoZWFwDQpkZXZub2RlcywgYWxs
b3dpbmcgbGVzcyB0cnVzdGVkIGFwcGxpY2F0aW9ucyB0byBhbGxvY2F0ZSBjbWEgZnJvbSBhDQpz
bWFsbCBwb29sIHdpdGhvdXQgaGF2aW5nIHRoZSBwb3RlbnRpYWwgdG8gRG9TIHRoZSBzeXN0ZW0u
DQoNCj4gPiBUaGVyZSBoYXZlIGJlZW4gcGF0Y2hlcyB0byBleHBvc2UgbXVsdGlwbGUgQ01BIGhl
YXBzLCBidXQgd2l0aCBubw0KPiA+IHVwc3RyZWFtIGRyaXZlcnMgdXNpbmcgdGhvc2UgcHVycG9z
ZSBzcGVjaWZpYyByZWdpb25zLCB3ZSBoYXZlbid0DQo+ID4gdGFrZW4gdGhlbSB5ZXQuDQo+ID4g
SSBkbyBob3BlIGFzIHRoZSBkcml2ZXJzIHRoYXQgdXRpbGl6ZSB0aGVzZSBwdXJwb3NlIGZvY3Vz
ZWQgaGVhcHMgZ28NCj4gPiB1cHN0cmVhbSwgd2UgY2FuIGFkZCB0aGF0IGxvZ2ljLCBzbyBJIHRo
aW5rIGJlaW5nIHNwZWNpZmljIHRoYXQgdGhpcw0KPiA+IGlzIGRlZmF1bHQgQ01BIGlzIGEgZ29v
ZCBpZGVhLg0KPg0KPiBJZiBoZWFwcyBuYW1lcyBhcmUgc3VwcG9zZWQgdG8gY2FycnkgdGhlIHJl
Z2lvbiBpdCBleHBvc2VzLCB0aGVuIGl0DQo+IHNob3VsZCBiZSBkZWZhdWx0X2NtYV9yZWdpb24v
YXJlYS4gSWYgaGVhcCBuYW1lcyBhcmUgc3VwcG9zZWQgdG8gZXhwb3NlDQo+IHRoZSBhbGxvY2F0
b3IgKGJ1dCBJIGRvbid0IHRoaW5rIGl0J3MgYSBnb29kIGlkZWEpLCBpdCBzaG91bGQgYmUgY21h
LiBJZg0KPiB0aGV5IGFyZSBtZWFudCB0byBjYXJyeSBhbGwgdGhhdCBwbHVzIHNvbWUgcG9saWN5
LA0KPiBjYWNoZWRfZGVmYXVsdF9jbWFfcmVnaW9uIHNob3VsZCBiZSB1c2VkLg0KPg0KPiBFaXRo
ZXIgd2F5LCBkZWZhdWx0X2NtYSBzZWVtcyB0byBtZSBlaXRoZXIgdG9vIHNwZWNpZmljIG9yIG5v
dCBzcGVjaWZpYw0KPiBlbm91Z2guIEFuZCB3ZSBzaG91bGQgcmVhbGx5IGRvY3VtZW50IHdoYXQg
dGhlIHBvbGljeSBmb3IgdGhvc2UgaGVhcHMNCj4gYXJlIHN1cHBvc2VkIHRvIGJlLg0KDQpJIGRv
bid0IHNlZSBpdCBhcyBzdWNoIGEgcHJvYmxlbS4gSXQgaXMgY2xlYXIgaXQgaXMgY21hLCBpdCBh
bHNvIGlzDQpjbGVhciBjb25jZXB0dWFsbHkgdGhhdCBpdCBpcyB0aGUgImRlZmF1bHQiIHJlZ2lv
biB0aGF0IHRoZSBrZXJuZWwNCnVzZXMgd2hlbiBkZXZpY2VzIGFyZW4ndCBzcGVjaWZpYy4NCkJ1
dCBJIHdvdWxkbid0IG9iamVjdCB0byBjbWFfZGVmYXVsdF9yZWdpb24vYXJlYSBhcyBhIG5hbWUg
ZWl0aGVyLCBidXQNCkkgZG9uJ3Qgc2VlIGl0IGFzIHBhcnRpY3VsYXJseSBpbXByb3ZlZCBvdmVy
IGNtYV9kZWZhdWx0Lg0KDQpUbyB5b3VyIGxhcmdlciBwb2ludCBhYm91dCBwb2xpY3ksIEkgZG8g
Z2V0IHRoZSB0ZW5zaW9uIHRoYXQgeW91IHdhbnQNCnRvIGJlIGFibGUgdG8gcHJvZ3JhbW1hdGlj
YWxseSBkZXJpdmUgb3IgZXZhbHVhdGUgaGVhcCBuYW1lcywgc28gdGhhdA0KYXBwbGljYXRpb25z
IGNhbiBjb25zaXN0ZW50bHkgZGVyaXZlIGEgcGF0aG5hbWUgdG8gZ2V0IHdoYXQgdGhleSB3YW50
Lg0KQnV0IEkgYWxzbyB0aGluayB0aGF0IHRoZXJlIGlzIHNvIG11Y2ggdmFyaWV0eSBpbiBib3Ro
IHRoZSBkZXZpY2VzIGFuZA0KdXNlcyB0aGF0IHRoZXJlIGlzIG5vIHdheSB0aGF0IGFsbCB1c2Ug
Y2FzZXMgYW5kIGFsbCBkZXZpY2VzIGNhbiBiZQ0Kc2F0aXNmaWVkIHdpdGggc3VjaCBhIHN0YXRp
YyBvciBldmVuIHByb2dyYW1tYXRpYyBtYXBwaW5nLiBGcm9tIG15DQpwZXJzcGVjdGl2ZSwgdGhl
cmUganVzdCBpcyBnb2luZyB0byBoYXZlIHRvIGJlIHNvbWUgZGV2aWNlIHNwZWNpZmljDQpnbHVl
IGxvZ2ljIHRoYXQgbWFwcyB1c2UtPmhlYXAgbmFtZS4gU2FtZSByZWFzb24gd2UgaGF2ZSBmc3Rh
YiBhbmQgdGhlDQpwYXNzd2QgZmlsZS4gIFRoYXQgc2FpZCwgSSB0aGluayBhZHZvY2F0aW5nIGZv
ciBuYW1pbmcgY29udmVudGlvbnMgaXMNCmRlZmluaXRlbHkgdXNlZnVsLCBidXQgSSdtIHdhcnkg
b2YgdHJ5aW5nIHRvIGVuZm9yY2UgdG9vIHNwZWNpZmljIGENCnNjaGVtYSBvbiB0aGUgbmFtZXMg
YXMgdGhlIGluY29tcGxldGVuZXNzIHRoZW9yZW0gd2lsbCBiaXRlIHVzLg0KDQp0aGFua3MNCi1q
b2huDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
