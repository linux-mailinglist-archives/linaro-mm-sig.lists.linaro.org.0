Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 542269E0BC4
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Dec 2024 20:12:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D8A443F4F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Dec 2024 19:12:45 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	by lists.linaro.org (Postfix) with ESMTPS id BA0D23F983
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Dec 2024 19:12:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="etdnQ/EF";
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.167.41 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53dd2fdcebcso5319960e87.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Dec 2024 11:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733166755; x=1733771555; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y5P0+db7NElW+RfhzCk/WkVDLZpj6atKSAhLo042qRI=;
        b=etdnQ/EFxnCRk/p68pqHKvl+iCk/K2B2ZFpabwC5gjoxpP5IoidFGZb/icshNZgZEZ
         oq5vS+9wAGiXF7kr3rTTvxdT7kBRVWfpR7T7IcamoyU0uDZMM14W61ZR4nLHjkdb+zUN
         gLpUt7oZ10OinJ3DSBZihLgvzMg/Z/zcXiXGrtmCp+uU6tEVNa1I2F7LPX+KyttwQ43m
         1xF/KPeMv2LCWthd/TulI6Fseen7LrXqJdsPuTEpthz/rt0x6B3op0dHUU+EShZjlMfu
         KnlTMNjgPeAKHsnx4qR9QWPGyABY5Y+vUk9Rfc7O7wdmqicyDmqrDLj09mKtBFD6Ge4Q
         AGvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733166755; x=1733771555;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y5P0+db7NElW+RfhzCk/WkVDLZpj6atKSAhLo042qRI=;
        b=syrtRndkSS7fZmKuAC8+gRKPvRIavVjX4uFrwmWMI5dIhxHDhIqfqWsJoxJ2OIr/JZ
         rwpMg5bxMOozBeirfLfJNTrgC0gCZpigOGud7hxidsagdohp8B2/X9rkpWKmLnDSyc0U
         ltFkXUFzbyCh9f95eRFZflAkDkwt2K/OptjDEDL0kHjm2FiY4YSMK9LfPToYUskecsTR
         CsFNThRj8oh3YOBoi4Fr+tU/JrmeOLbHHEtsUZvXwWkTL4UojC1yr3NlJlcD5C9CE41r
         Ak8afBiGOdGz1kZUIIXSr0SVaNscPkvytPOBZKHcwU1kh/5/ognF++zkZNPj6cnzZ/QJ
         OtsA==
X-Forwarded-Encrypted: i=1; AJvYcCVch5rvK9ObeG3Nsg7+eeRhUUdDQW4UPw4TOHFB+rALgAyK+iOyLBD2XqHJnH4OHpoXTzVX1lpTsDHMaR4T@lists.linaro.org
X-Gm-Message-State: AOJu0Yzm4O9ZI9MayOKFvGVAfQCusGbUh2jTbc3orlqocA6nfdy5mi2n
	as4s7E6iWg07oh4H5S2wUPoqTQ3+ALfHhZEjUPly0t23u7DoUffNfCbsyBt0IxX3bTaj1O/x7/e
	cndAoxHG4af85yF5NRz4hMQRY//R4qH9RNAA=
X-Gm-Gg: ASbGncuwqKLNoGvhaS9YfvbCj1vJkAc/PLX5ixyuvJ7yH+0XLVxliAnYC5E0W/ORIjp
	pDl+lxxvEE6PFfFj8pz18Udt+f8MGx3s6Zvs9hFSMVqhxQNi98r6Sm98fdLqd
X-Google-Smtp-Source: AGHT+IHZfCjhITQ3qERmJbAY1aREzd4BIcVZPSiVSRGk4ymF9wRxc0gWXYA3+kYFBl8DXbtnZqYMib0piYz7PcngqQY=
X-Received: by 2002:a19:8c4e:0:b0:53d:f177:51d1 with SMTP id
 2adb3069b0e04-53df17752b3mr9327407e87.13.1733166755293; Mon, 02 Dec 2024
 11:12:35 -0800 (PST)
MIME-Version: 1.0
References: <20241202115827.50388-1-mripard@kernel.org>
In-Reply-To: <20241202115827.50388-1-mripard@kernel.org>
From: John Stultz <jstultz@google.com>
Date: Mon, 2 Dec 2024 11:12:23 -0800
Message-ID: <CANDhNCpTnc6=YkjQgQngRCw1_xLWgOFrcjTxrrGX+bRhvGb5DQ@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Queue-Id: BA0D23F983
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.167.41:from];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.41:from];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.167.41:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QTRI7OGHINXU2DFO3RGS243U3YP22XAY
X-Message-ID-Hash: QTRI7OGHINXU2DFO3RGS243U3YP22XAY
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] Documentation: dma-buf: heaps: Add heap name definitions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QTRI7OGHINXU2DFO3RGS243U3YP22XAY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBEZWMgMiwgMjAyNCBhdCAzOjU44oCvQU0gTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBr
ZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gRm9sbG93aW5nIGEgcmVjZW50IGRpc2N1c3Npb24gYXQg
bGFzdCBQbHVtYmVycywgSm9obiBTdHVsdHosIFN1bWl0DQo+IFNld2FsLCBUSiBNZXJjaWVyIGFu
ZCBJIGNhbWUgdG8gYW4gYWdyZWVtZW50IHRoYXQgd2Ugc2hvdWxkIGRvY3VtZW50DQo+IHdoYXQg
dGhlIGRtYS1idWYgaGVhcHMgbmFtZXMgYXJlIGV4cGVjdGVkIHRvIGJlLCBhbmQgd2hhdCB0aGUg
YnVmZmVycw0KPiBhdHRyaWJ1dGVzIHlvdSdsbCBnZXQgc2hvdWxkIGJlIGRvY3VtZW50ZWQuDQo+
DQo+IExldCdzIGNyZWF0ZSB0aGF0IGRvYyB0byBtYWtlIHN1cmUgdGhvc2UgYXR0cmlidXRlcyBh
bmQgbmFtZXMgYXJlDQo+IGd1YXJhbnRlZWQgZ29pbmcgZm9yd2FyZC4NCj4NCj4gU2lnbmVkLW9m
Zi1ieTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KPg0KPiAtLS0NCj4gQ2hh
bmdlcyBmcm9tIHYxOg0KPiAgIC0gQWRkIHRoZSBtZW50aW9uIHRoYXQgdGhlIGNtYSAvIHJlc2Vy
dmVkIGhlYXAgaXMgb3B0aW9uYWwuDQo+DQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBs
d24ubmV0Pg0KPiBUbzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4g
Q2M6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPg0K
PiBDYzogQnJpYW4gU3RhcmtleSA8QnJpYW4uU3RhcmtleUBhcm0uY29tPg0KPiBDYzogSm9obiBT
dHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCj4gQ2M6ICJULkouIE1lcmNpZXIiIDx0am1lcmNp
ZXJAZ29vZ2xlLmNvbT4NCj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzog
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtl
cm5lbC5vcmcNCj4gQ2M6IGxpbnV4LWRvY0B2Z2VyLmtlcm5lbC5vcmcNCj4gLS0tDQo+ICBEb2N1
bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvZG1hLWJ1Zi1oZWFwcy5yc3QgfCA3NiArKysrKysrKysr
KysrKysrKysrDQo+ICBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvaW5kZXgucnN0ICAgICAg
ICAgfCAgMSArDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDc3IGluc2VydGlvbnMoKykNCj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvZG1hLWJ1Zi1oZWFwcy5y
c3QNCj4NCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9kbWEtYnVm
LWhlYXBzLnJzdCBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9kbWEtYnVmLWhlYXBzLnJz
dA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAuLjY4YmU3ZGRl
YTE1MA0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFw
aS9kbWEtYnVmLWhlYXBzLnJzdA0KPiBAQCAtMCwwICsxLDc2IEBADQo+ICsuLiBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMA0KPiArDQo+ICs9PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0NCj4gK0FsbG9jYXRpbmcgZG1hLWJ1ZiB1c2luZyBoZWFwcw0KPiArPT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09DQo+ICsNCj4gK0RtYS1idWYgSGVhcHMgYXJlIGEgd2F5IGZvciB1
c2Vyc3BhY2UgdG8gYWxsb2NhdGUgZG1hLWJ1ZiBvYmplY3RzLiBUaGV5IGFyZQ0KPiArdHlwaWNh
bGx5IHVzZWQgdG8gYWxsb2NhdGUgYnVmZmVycyBmcm9tIGEgc3BlY2lmaWMgYWxsb2NhdGlvbiBw
b29sLCBvciB0byBzaGFyZQ0KPiArYnVmZmVycyBhY3Jvc3MgZnJhbWV3b3Jrcy4NCj4gKw0KPiAr
SGVhcHMNCj4gKz09PT09DQo+ICsNCj4gK0EgaGVhcCByZXByZXNlbnQgYSBzcGVjaWZpYyBhbGxv
Y2F0b3IuIFRoZSBMaW51eCBrZXJuZWwgY3VycmVudGx5IHN1cHBvcnRzIHRoZQ0KPiArZm9sbG93
aW5nIGhlYXBzOg0KPiArDQo+ICsgLSBUaGUgYGBzeXN0ZW1gYCBoZWFwIGFsbG9jYXRlcyB2aXJ0
dWFsbHkgY29udGlndW91cywgY2FjaGVhYmxlLCBidWZmZXJzDQo+ICsNCj4gKyAtIFRoZSBgYHJl
c2VydmVkYGAgaGVhcCBhbGxvY2F0ZXMgcGh5c2ljYWxseSBjb250aWd1b3VzLCBjYWNoZWFibGUs
DQoNClNvLCBJIHRoaW5rIGNhbGxpbmcgdGhlIGhlYXAgbmFtZSB0aGUgImNtYSIgaGVhcCBtaWdo
dCBiZSBjbGVhcmVyIGhlcmU/DQpPbiBzb21lIHBsYXRmb3JtcyB0aGUgY2hhcmRldiBpcyAicmVz
ZXJ2ZWQiIGJlY2F1c2UgdGhlIGRlZmF1bHQgY21hDQpyZWdpb24gaXMgc2V0dXAgdmlhIGRtYV9j
b250aWd1b3VzX3Jlc2VydmVfYXJlYSgpICh3aGljaCBjYWxscyBpdA0KInJlc2VydmVkIiksIGJ1
dCB0aGUgZG1hIGhlYXAgaXMgZXhwb3J0aW5nIGNtYS4NCg0KQWRkaXRpb25hbGx5LCBvbiBzb21l
IGRvd25zdHJlYW0gZGV2aWNlcyB0aGVyZSBjYW4gYmUgbXVsdGlwbGUgcHVycG9zZQ0Kc2VwYXJh
dGVkIENNQSBoZWFwcy4gVGhpcyBoYXNuJ3QgbWFkZSBpdCB1cHN0cmVhbSBvdmVyIG9iamVjdGlv
bnMgdG8NCmhvdyBkb3duc3RyZWFtIGRldmljZXMgd2VyZSBlbnVtZXJhdGluZyB0aGUgc2VwYXJh
dGUgY21hIHJlZ2lvbnMgaW4NCnRoZWlyIGRldmljZXRyZWVzLiBJdCB3YXMgcHJvcG9zZWQgdG8g
ZXhwb3J0IGFsbCBjbWEgcmVnaW9ucyBhcw0Kc2VwYXJhdGUgY21hIGhlYXBzLCBidXQgdGhlcmUg
d2FzIHJlYXNvbmFibGUgY29uY2VybiBvdmVyIGtlcm5lbA0KZHJpdmVycyBub3QgZXhwZWN0aW5n
IHVzZXJsYW5kIHRvIGJlIGFibGUgdG8gYWxsb2NhdGUgZnJvbSBzcGVjaWFsDQpyZXNlcnZhdGlv
bnMsIHNvIHRoYXQgc2VlbWVkIGxpa2UgYSBiYWQgaWRlYS4NCg0KSWRlYWxseSB1cHN0cmVhbSBk
cml2ZXJzIHdvdWxkIHdhbnQgdG8gZXhwbGljaXRseSBleHBvcnQgdGhlaXIgc3BlY2lhbA0KQ01B
IHJlZ2lvbiB0aGVtc2VsdmVzIGFuZCB3ZSB3b3VsZCBleHBvcnQgc29tZXRoaW5nIGxpa2UNCmFk
ZF9jbWFfaGVhcCgpIHRvIGRvIHNvLg0KDQpBbGwgdG8gc2F5OiB0aGlzIGRvY3VtZW50IHJlYWxs
eSBvbmx5IGNvdmVycyB0aGUgbmFtaW5nIG9mIHRoZQ0KImRlZmF1bHQiIENNQSByZWdpb24gdGhh
dCBpcyBleHBvcnRlZCB2aWEgdGhlIGNtYSBoZWFwLiAgRXZlbnR1YWxseQ0KdGhlcmUgbWF5IGJl
IG90aGVyIENNQSBoZWFwcyBhcyB3ZWxsIHVwc3RyZWFtLg0KDQo+ICsgICBidWZmZXJzLiBPbmx5
IHByZXNlbnQgaWYgYSBDTUEgcmVnaW9uIGlzIHByZXNlbnQuIFN1Y2ggYSByZWdpb24gaXMNCj4g
KyAgIHVzdWFsbHkgY3JlYXRlZCBlaXRoZXIgdGhyb3VnaCB0aGUga2VybmVsIGNvbW1hbmRsaW5l
IHRocm91Z2ggdGhlDQo+ICsgICBgY21hYCBwYXJhbWV0ZXIsIGEgbWVtb3J5IHJlZ2lvbiBEZXZp
Y2UtVHJlZSBub2RlIHdpdGggdGhlDQo+ICsgICBgbGludXgsY21hLWRlZmF1bHRgIHByb3BlcnR5
IHNldCwgb3IgdGhyb3VnaCB0aGUgYENNQV9TSVpFX01CWVRFU2Agb3INCj4gKyAgIGBDTUFfU0la
RV9QRVJDRU5UQUdFYCBLY29uZmlnIG9wdGlvbnMuIERlcGVuZGluZyBvbiB0aGUgcGxhdGZvcm0s
IGl0DQo+ICsgICBtaWdodCBiZSBjYWxsZWQgZGlmZmVyZW50bHk6DQo+ICsNCj4gKyAgICAtIEFj
ZXIgSWNvbmlhIFRhYiBBNTAwOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBBbGx3aW5uZXIgc3Vu
NGksIHN1bjVpIGFuZCBzdW43aSBmYW1pbGllczogYGBkZWZhdWx0LXBvb2xgYA0KPiArICAgIC0g
QW1sb2dpYyBBMTogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gQW1sb2dpYyBHMTJBL0cxMkIvU00x
OiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBBbWxvZ2ljIEdYQkIvR1hMOiBgYGxpbnV4LGNtYWBg
DQo+ICsgICAgLSBBU1VTIEVlZVBhZCBUcmFuc2Zvcm1lciBURjEwMTogYGBsaW51eCxjbWFgYA0K
PiArICAgIC0gQVNVUyBHb29nbGUgTmV4dXMgNyAoUHJvamVjdCBCYWNoIC8gTUUzNzBURykgRTE1
NjU6IGBgbGludXgsY21hYGANCj4gKyAgICAtIEFTVVMgR29vZ2xlIE5leHVzIDcgKFByb2plY3Qg
TmFrYXNpIC8gTUUzNzBUKSBFMTU2NTogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gQVNVUyBHb29n
bGUgTmV4dXMgNyAoUHJvamVjdCBOYWthc2kgLyBNRTM3MFQpIFBNMjY5OiBgYGxpbnV4LGNtYWBg
DQo+ICsgICAgLSBBc3VzIFRyYW5zZm9ybWVyIEluZmluaXR5IFRGNzAwVDogYGBsaW51eCxjbWFg
YA0KPiArICAgIC0gQXN1cyBUcmFuc2Zvcm1lciBQYWQgM0cgVEYzMDBURzogYGBsaW51eCxjbWFg
YA0KPiArICAgIC0gQXN1cyBUcmFuc2Zvcm1lciBQYWQgVEYzMDBUOiBgYGxpbnV4LGNtYWBgDQo+
ICsgICAgLSBBc3VzIFRyYW5zZm9ybWVyIFBhZCBURjcwMVQ6IGBgbGludXgsY21hYGANCj4gKyAg
ICAtIEFzdXMgVHJhbnNmb3JtZXIgUHJpbWUgVEYyMDE6IGBgbGludXgsY21hYGANCj4gKyAgICAt
IEFTVVMgVml2b2Jvb2sgUyAxNTogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gQ2FkZW5jZSBLQzcw
NTogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gRGlnaSBJbnRlcm5hdGlvbmFsIENvbm5lY3RDb3Jl
IDZVTDogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gRnJlZXNjYWxlIGkuTVg4RFhMIEVWSzogYGBs
aW51eCxjbWFgYA0KPiArICAgIC0gRnJlZXNjYWxlIFRRTWE4WHg6IGBgbGludXgsY21hYGANCj4g
KyAgICAtIEhpc2lsaWNvbiBIaWtleTogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gTGVub3ZvIFRo
aW5rUGFkIFQxNHMgR2VuIDY6IGBgbGludXgsY21hYGANCj4gKyAgICAtIExlbm92byBUaGlua1Bh
ZCBYMTNzOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBMZW5vdm8gWW9nYSBTbGltIDd4OiBgYGxp
bnV4LGNtYWBgDQo+ICsgICAgLSBMRyBPcHRpbXVzIDRYIEhEIFA4ODA6IGBgbGludXgsY21hYGAN
Cj4gKyAgICAtIExHIE9wdGltdXMgVnUgUDg5NTogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gTG9v
bmdzb24gMmswNTAwLCAyazEwMDAgYW5kIDJrMjAwMDogYGBsaW51eCxjbWFgYA0KPiArICAgIC0g
TWljcm9zb2Z0IFJvbXVsdXM6IGBgbGludXgsY21hYGANCj4gKyAgICAtIE5YUCBpLk1YOFVMUCBF
Vks6IGBgbGludXgsY21hYGANCj4gKyAgICAtIE5YUCBpLk1YOTMgOXg5IFFTQjogYGBsaW51eCxj
bWFgYA0KPiArICAgIC0gTlhQIGkuTVg5MyAxMVgxMSBFVks6IGBgbGludXgsY21hYGANCj4gKyAg
ICAtIE5YUCBpLk1YOTMgMTRYMTQgRVZLOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBOWFAgaS5N
WDk1IDE5WDE5IEVWSzogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gT3V5YSBHYW1lIENvbnNvbGU6
IGBgbGludXgsY21hYGANCj4gKyAgICAtIFBlZ2F0cm9uIENoYWdhbGw6IGBgbGludXgsY21hYGAN
Cj4gKyAgICAtIFBIWVRFQyBwaHlDT1JFLUFNNjJBIFNPTTogYGBsaW51eCxjbWFgYA0KPiArICAg
IC0gUEhZVEVDIHBoeUNPUkUtaS5NWDkzIFNPTTogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gUXVh
bGNvbW0gU0M4MjgwWFAgQ1JEOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBRdWFsY29tbSBYMUU4
MDEwMCBDUkQ6IGBgbGludXgsY21hYGANCj4gKyAgICAtIFF1YWxjb21tIFgxRTgwMTAwIFFDUDog
YGBsaW51eCxjbWFgYA0KPiArICAgIC0gUmFzcGJlcnJ5UGk6IGBgbGludXgsY21hYGANCj4gKyAg
ICAtIFRleGFzIEluc3RydW1lbnRzIEFNNjJ4IFNLIGJvYXJkIGZhbWlseTogYGBsaW51eCxjbWFg
YA0KPiArICAgIC0gVGV4YXMgSW5zdHJ1bWVudHMgQU02MkE3IFNLOiBgYGxpbnV4LGNtYWBgDQo+
ICsgICAgLSBUb3JhZGV4IEFwYWxpcyBpTVg4OiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBUUS1T
eXN0ZW1zIGkuTVg4TU0gVFFNYThNeE1MOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBUUS1TeXN0
ZW1zIGkuTVg4TU4gVFFNYThNeE5MOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBUUS1TeXN0ZW1z
IGkuTVg4TVBsdXMgVFFNYThNUHhMOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBUUS1TeXN0ZW1z
IGkuTVg4TVEgVFFNYThNUTogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gVFEtU3lzdGVtcyBpLk1Y
OTMgVFFNYTkzeHhMQS9UUU1hOTN4eENBIFNPTTogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gVFEt
U3lzdGVtcyBNQkE2VUx4IEJhc2Vib2FyZDogYGBsaW51eCxjbWFgYA0KPg0KDQpIcm0uIEknbSBu
b3Qgc3VyZSBJIHNlZSB0aGUgdmFsdWUgaW4gZW51bWVyYXRpbmcgdGhpbmdzIGluIHRoaXMgd2F5
LA0KaXQgc2VlbXMgbGlrZSBpdCB3aWxsIGJlIGEgbnVpc2FuY2UgdG8ga2VlcCBjdXJyZW50PyAg
TWF5YmUgc29tZXRoaW5nDQpsaWtlOg0KDQpPbiBtb3N0IHN5c3RlbXMgdGhlIGRlZmF1bHQgY21h
IHJlZ2lvbiBpcyBuYW1lZCAibGludXgsIGNtYSIgb3INCiJyZXNlcnZlZCIsIHdpdGggYSBmZXcg
ZXhjZXB0aW9uczoNCiAgICAtIEFsbHdpbm5lciBzdW40aSwgc3VuNWkgYW5kIHN1bjdpIGZhbWls
aWVzOiBgYGRlZmF1bHQtcG9vbGBgDQoNCnRoYW5rcw0KLWpvaG4NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
