Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WA62JBFoHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:20:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 344EC62884D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:20:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C72A3F756
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:20:16 +0000 (UTC)
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	by lists.linaro.org (Postfix) with ESMTPS id 4A5D54048C
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 13:27:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=uNydlvsX;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of aliceryhl@google.com designates 74.125.82.44 as permitted sender) smtp.mailfrom=aliceryhl@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-137d452574cso2984549c88.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Jun 2026 06:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780320442; cv=none;
        d=google.com; s=arc-20240605;
        b=PME15vb9+00vpxwKOlQDLsbK8ZXny8slle6ihepkTjKcUlLs1N9EPd3xnI7FjA/NTX
         hVpYXGjiHVSV7hePh/dMbKG1yEdwUtr2AfCrBCiJ/ym5j4RcXmWAtX0d85veiWdH67IE
         uO7NLWUYkUJeiyvLeYAD+O7h7ObynnPPKXx+68sxYCT2DahMEAW3+JhA7J5s5txVydiU
         +gQll41d4Mhjt3ImyfUZC/NDWdHlC6VpsCWBV87mOitn/srX+TIuhBtpIJyOEiURbmY9
         eqfNciHcmb17GWggYUAtVoQI8jezNSBOGf5Tfyuq+lYI3moqbD3zgtQvX2GkPiSDBPwl
         FSlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Ri49UqDlI7T6GkNPLNf+vktr0M6I1uPdwQQUuW9VuW4=;
        fh=iVRmo7W8mhxotL7WKmBJTjm1S2Z4YjZC+jCSXQbcYrU=;
        b=fiVK82YvpNTDOT77z+m9Uvw0GS62nWBDXKJGToTyIoE5tK9RHZtsDiwzRHnXC49siC
         VvpRPMStTmqaRGB2I5waaEFy0ukxxrPRyzhnPxJ3bO8tWBvwmmI7DFB+f1roL4gFvPdN
         YEXwWiGQhLaVVDmY3b53xbj2zJklU3WwX8NB0Dks+nSoB1mpz3nbfiKQDmURg6uJKRRy
         vtP9BWc40UjS29RLB9AsTKmAKVa/zHWy7WCYbWVvJ0W4D4swUgg6Vqj9Rxdw9wwUP6i8
         grOWFLQI2UMurHH/4T3aWbevu3s11uaRF+mQumyvm/T6pBO4bN6X11HnlNdGD/KXvsvV
         zZuw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1780320442; x=1780925242; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ri49UqDlI7T6GkNPLNf+vktr0M6I1uPdwQQUuW9VuW4=;
        b=uNydlvsXU+fZ6balDJeVO7ag3KtEnCh8ljFj6thHPJSDvkzBWh+8wxxNJe6kV3PeJb
         nYozmmy+LkxmvlFHbk+oJ3tZvNhS5qSFSuj/w40lyiLbxhYuk5E1PRIStvoDOpsm/ppe
         6FAH5BrjuQV5xdTDyDlaXtEn78KLiqa/rfCxZnwEPycKRIBA66pxMS8MI1aALJASIyV4
         lAaILMd0VQ1vcZNwEeVJoX6D/WiFdhTKvXBalC8+wI1KdnsK4bfavYlC4S5PiQ+g/qS0
         z1ketdBz2cDF0naZFABZT34Fcwqd7t3F6dHarzkcYFpn4d+/+HV98IOFFQiDOfDzTL9l
         h5wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780320442; x=1780925242;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ri49UqDlI7T6GkNPLNf+vktr0M6I1uPdwQQUuW9VuW4=;
        b=azz2mfQapGTSfd4Vh5LvlbVGC3nu0x6HDVTZlaIu+TutptYtVpzSi61/NHTp/G7DJ7
         iZhwma5Quuy+wCykaKSNoVVEtsG21C3B1ipwfxRPk/EMcYazZGMvKa2wQmveQYd+qnMg
         fi8zfLAV6xndWY8fxg4d1Nge6Qgw5EB7nN4oZsHOMxfLjvgK0crKEjr8qTTaKL1Pze7P
         VGMOB5WLTKaSt41xhSV9ACFOMJert843E55hSmNXXKOAFIZT3ll9h2LIvFq3grMuKAP6
         JNQFqdAEm/sJQ/AsO8/VaoF2TeJhL6dH/nnG1N7rLcroVV12+T+48jS5qgMyBiSAW3/n
         JlRQ==
X-Forwarded-Encrypted: i=1; AFNElJ+whXc9LTq0ZWyr5VsNOyc+f4yKcUgCd5KccnkFngdKQaf5WfOrNSqMbeSMiiXEc7c1aReIpfmrP6pYERW2@lists.linaro.org
X-Gm-Message-State: AOJu0YxPYlK7HEpBKDhPKsAM4YkwXCEjCDsI+e34ZGY7qJcKnkLMEGB+
	tA1cPZhdtokSNgqSWfSiSPbLAJmu3boe7ERokXePwlLOlGvGmnL0oIyhM5jViKfGB+am/LSiXmm
	YQwXO7LAr5XXPSjAdTonudjn6dkkTAnDfRm1EF4A4
X-Gm-Gg: Acq92OGHi/1ox/xlkAm37ym6cjkNLvAoIjx7ui1zH7VotrZqrrOtwPXvfwl3j5tEYb3
	XFYAcOD5WfiSySo2JdipZ7xAEzV4qJFjYfSk/MZcZ6IsJHnLrIn1er555rw9H69OBnqScJPaCpw
	dzPYjfbjqblrTbTPSstancNtL77UdZNFFy8F+Pb3Cu4aiaT9gwGh9DVPhW5UYjaOGHJ2ZIv4T+f
	s6xldDnmoYwZd8JjprlLyOVyqWqBeQrg72uX0zXNLVNPy/HyHMzqLpKVxA4UQvhSk9YeMx8vUNs
	HvA+9hNkuTIBy3Zdkehi8oCNgrMDdna+AivKyuqKsDROa//O3XTm75zNA27RZQQ71GseGgYLlCm
	Swsk=
X-Received: by 2002:a05:7300:2201:b0:304:d8cb:8424 with SMTP id
 5a478bee46e88-304fa546886mr4919952eec.9.1780320441610; Mon, 01 Jun 2026
 06:27:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260530143541.229628-2-phasta@kernel.org> <20260530143541.229628-5-phasta@kernel.org>
 <ah1glmXDM-OAKa5h@google.com> <0ea6b6fdd1e3f1e07445f17c0bf672524938dc85.camel@mailbox.org>
 <ah19ZVkr7b3m7V_u@google.com> <3b216f24afb406b797b8bbb73b3f5c0eec2fdc6c.camel@mailbox.org>
 <CAH5fLgiZb5fqfXGQMicPp+UbBi3JMN8ZNG_Ldt5KiSk+btVCSA@mail.gmail.com> <3829028571be1886b99018040782ef94369b9523.camel@mailbox.org>
In-Reply-To: <3829028571be1886b99018040782ef94369b9523.camel@mailbox.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Mon, 1 Jun 2026 15:27:06 +0200
X-Gm-Features: AVHnY4IJXBoMvh-rw5Yz6dkN_FCzB34R7ldudBtNs3IR1XQFjKtmqNv3cEC-Bt4
Message-ID: <CAH5fLggFHp6bLZ-g8aTQKY_sHRJ0aEmB+-2XWG3RMS1yBXO+8A@mail.gmail.com>
To: phasta@kernel.org
X-Spamd-Bar: -----
X-MailFrom: aliceryhl@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XLGRMT5VH7CL2VDYIQVGLGVRZYJHXU4F
X-Message-ID-Hash: XLGRMT5VH7CL2VDYIQVGLGVRZYJHXU4F
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:18:19 +0000
CC: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.org>, Alexandre Courbo
 t <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XLGRMT5VH7CL2VDYIQVGLGVRZYJHXU4F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[37];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.979];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:email,zulipchat.com:url,lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 344EC62884D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBKdW4gMSwgMjAyNiBhdCAzOjI04oCvUE0gUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFA
bWFpbGJveC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBNb24sIDIwMjYtMDYtMDEgYXQgMTU6MjIgKzAy
MDAsIEFsaWNlIFJ5aGwgd3JvdGU6DQo+ID4gT24gTW9uLCBKdW4gMSwgMjAyNiBhdCAyOjQ34oCv
UE0gUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAbWFpbGJveC5vcmc+IHdyb3RlOg0KPiA+ID4NCj4g
PiA+IE9uIE1vbiwgMjAyNi0wNi0wMSBhdCAxMjozOSArMDAwMCwgQWxpY2UgUnlobCB3cm90ZToN
Cj4gPiA+ID4gT24gTW9uLCBKdW4gMDEsIDIwMjYgYXQgMDI6MjY6MTdQTSArMDIwMCwgUGhpbGlw
cCBTdGFubmVyIHdyb3RlOg0KPiA+ID4gPiA+IE9uIE1vbiwgMjAyNi0wNi0wMSBhdCAxMDozNiAr
MDAwMCwgQWxpY2UgUnlobCB3cm90ZToNCj4gPiA+ID4gPiA+IE9uIFNhdCwgTWF5IDMwLCAyMDI2
IGF0IDA0OjM1OjExUE0gKzAyMDAsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gPiA+ID4gPiA+
ID4gKy8vLyBBIHRyYWl0IHRvIGVuZm9yY2UgdGhhdCBhbGwgZGF0YSBpbiBhIFtgRHJpdmVyRmVu
Y2VgXSBlaXRoZXIgZG9lcyBub3QgbmVlZA0KPiA+ID4gPiA+ID4gPiArLy8vIGRyb3AsIG9yIGxp
dmVzIGluIGEgW2BSY3VCb3hgXS4NCj4gPiA+ID4gPiA+ID4gK3B1YiB0cmFpdCBEcml2ZXJGZW5j
ZUFsbG93ZWREYXRhOiBwcml2YXRlOjpTZWFsZWQge30NCj4gPiA+ID4gPiA+ID4gKw0KPiA+ID4g
PiA+ID4gPiArbW9kIHByaXZhdGUgew0KPiA+ID4gPiA+ID4gPiArICAgIHB1YiB0cmFpdCBTZWFs
ZWQge30NCj4gPiA+ID4gPiA+ID4gK30NCj4gPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gPiAr
aW1wbDxGOiBDb3B5PiBEcml2ZXJGZW5jZUFsbG93ZWREYXRhIGZvciBGIHt9DQo+ID4gPiA+ID4g
PiA+ICtpbXBsPEY6IFNlbmQ+IERyaXZlckZlbmNlQWxsb3dlZERhdGEgZm9yIFJjdUJveDxGPiB7
fQ0KPiA+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiA+ICtpbXBsPEY6IENvcHk+IHByaXZhdGU6
OlNlYWxlZCBmb3IgRiB7fQ0KPiA+ID4gPiA+ID4gPiAraW1wbDxGOiBTZW5kPiBwcml2YXRlOjpT
ZWFsZWQgZm9yIFJjdUJveDxGPiB7fQ0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IFdoeSBzZWFs
ZWQ/IEp1c3QgbWFrZSB0aGUgdHJhaXQgdW5zYWZlIGFuZCByZXF1aXJlIHRoZSB0aGluZ3MgeW91
DQo+ID4gPiA+ID4gPiByZXF1aXJlIGZyb20gdGhlIHVzZXIuDQo+ID4gPiA+ID4NCj4gPiA+ID4g
PiBUaGlzIGlzIGZhciBiZXR0ZXIuIFdlIGRlZmluaXRlbHkgb25seSBhbGxvdyB0aGUgdXNlciB0
byBwYXNzIEEgb3IgQiwNCj4gPiA+ID4gPiBhbmQgb25seSB0aGVuIGl0IGNvbXBpbGVzLg0KPiA+
ID4gPg0KPiA+ID4gPiBXaGF0IGlmIEkgaGF2ZSBhbm90aGVyIHR5cGUgdGhhdCBJIHdhbnQgdG8g
dXNlIGhlcmU/IEZvciBleGFtcGxlLCBtYXliZQ0KPiA+ID4gPiBJIGhhdmUgYSBzdHJ1Y3QgY29u
dGFpbmluZyBhIGNvcHkgZmllbGQgYW5kIGFuIFJjdUJveC4gT3IgbWF5YmUgSSBoYXZlDQo+ID4g
PiA+IGFuIEFSZWY8Xz4gb2Ygc29tZSBDIHR5cGUgdGhhdCB1c2VzIHJjdSBmb3IgY2xlYW51cC4g
VGhlbiBJIG11c3QgZWRpdA0KPiA+ID4gPiB0aGlzIGZpbGUgdG8gYWRkIHN1cHBvcnQgZm9yIGl0
Pw0KPiA+ID4gPg0KPiA+ID4gPiA+IFRoZSB1bnNhZmUgaW1wbGVtZW50YXRpb24gY291bGQgYmUg
bWVzc2VkIHVwLg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gSSB0aG91Z2h0IHRoYXQncyB3aGF0IFNl
YWxlZCBpcyBmb3IuIE9yIGlzbid0IGl0Pw0KPiA+ID4gPg0KPiA+ID4gPiBTZWFsZWQgaXMgZm9y
IG1ha2luZyAxMDAlIHN1cmUgdGhhdCBkb3duc3RyZWFtIGNyYXRlcy9kcml2ZXJzIGNhbm5vdA0K
PiA+ID4gPiBwcm92aWRlIHRoZWlyIG93biBpbXBsZW1lbnRhdGlvbnMuIEJ1dCBJIGRvbid0IHNl
ZSB3aHkgeW91IG5lZWQgdGhhdC4NCj4gPiA+ID4gQWxsIHlvdSByZXF1aXJlIGlzIHRoYXQgdGhl
IHZhbHVlIHJlbWFpbnMgdmFsaWQgZm9yIG9uZSBncmFjZSBwZXJpb2QNCj4gPiA+ID4gYWZ0ZXIg
Y2xlYW51cCBiZWdpbnMuIEFzIGxvbmcgYXMgdGhlIHR5cGUgc2F0aXNmaWVzIHRoYXQsIHlvdSBh
cmUgaGFwcHkuDQo+ID4gPiA+IEFuIHVuc2FmZSB0cmFpdCBjYW4gcmVxdWlyZSB0aGF0IHNvcnQg
b2YgcmVxdWlyZW1lbnQgZnJvbSB0aGUgdXNlci4NCj4gPiA+ID4NCj4gPiA+ID4gSSB0aGluayB3
aGF0IHlvdSB3YW50IGlzIGV4cHJlc3NlZCB3ZWxsIGJ5IGBSY3VGcmVlU2FmZWAgZnJvbSB0aGlz
DQo+ID4gPiA+IHRocmVhZDoNCj4gPiA+ID4gaHR0cHM6Ly9ydXN0LWZvci1saW51eC56dWxpcGNo
YXQuY29tLyNuYXJyb3cvY2hhbm5lbC8yOTE1NjYtTGlicmFyeS90b3BpYy9Db25zb2xpZGF0ZS4y
MC42MFBvbGxDb25kVmFyQm94LjYwLjIwaW50by4yMC42MFJjdS4yQUJveC42MC9uZWFyLzU5ODcy
NjcyNA0KPiA+ID4gPg0KPiA+ID4NCj4gPiA+IEkgZ3Vlc3MgdGhpcyBpcyBhIHF1ZXN0aW9uIG9m
IGRlc2lnbiBwcmluY2lwbGVzLiBJZiB5b3UgZGVtYW5kIGFuDQo+ID4gPiBSY3VCb3gsIHlvdSBo
YXZlIGEgZ3VhcmFudGVlIHRoYXQgaXQncyBzYWZlLg0KPiA+ID4NCj4gPiA+IElmIHlvdSBkZW1h
bmQgYW4gdW5zYWZlIHRyYWl0LCB5b3Ugb3BlbiB0aGUgcG9zc2liaWxpdHkgZm9yIHBlb3BsZQ0K
PiA+ID4gbWVzc2luZyB1cC4NCj4gPiA+DQo+ID4gPiBEdWUgdG8gdGhlIHVuc2FmZS1jb250cmFj
dCB5b3UnZCBoYXZlIG1vdmVkIHRoZSByZXNwb25zaWJpbGl0eSBmb3IgdGhlDQo+ID4gPiBzb3Vu
ZG5lc3MgdG8gdGhlIGRyaXZlci4NCj4gPiA+DQo+ID4gPiBJIHdvdWxkIG5vdCB3YW50IHRvIGJs
b2NrIHlvdXIgc3VnZ2VzdGlvbiwgYnV0IEkgYW0gbm90IHN1cmUgd2hldGhlcg0KPiA+ID4gdGhh
dCdzIHJlYWxseSB0aGUgYmV0dGVyIGRlc2lnbiBpZGVhLg0KPiA+DQo+ID4gWWVzLCBpdCdzIGEg
ZGVzaWduIHByaW5jaXBsZS4gWW91IGFyZSBzYXlpbmcgdGhhdCBpZiBzb21lb25lIG5lZWRzIHRv
DQo+ID4gZG8gWCBidXQgbWlnaHQgZ2V0IGl0IHdyb25nLCB3ZSBzaG91bGQgdGFrZSBhd2F5IHRo
ZSBhYmlsaXR5IHRvIGRvIFg/DQo+ID4gSSBmdW5kYW1lbnRhbGx5IGRpc2FncmVlIHdpdGggdGhh
dCBwcmluY2lwbGUuIFVuc2FmZSB0cmFpdHMgaXMgdGhlDQo+ID4gdG9vbCBSdXN0IGNyZWF0ZWQg
Zm9yIHRoZSBleGFjdCBwcm9ibGVtIHlvdSBoYXZlOyBtYXJraW5nIHBsYWNlcyB3aGVyZQ0KPiA+
IHlvdSBzaG91bGQgYmUgY2FyZWZ1bCBpcyB0aGUgZW50aXJlIHBvaW50IG9mICd1bnNhZmUnLg0K
Pg0KPiBJIG1lYW4sIGZpbmUgYnkgbWUgaWYgdGhlIG90aGVycyBkb24ndCBkaXNhZ3JlZS4NCj4N
Cj4gQnV0IHdoZW4gdGhlbiBkbyB5b3UgZXZlciByZWFsbHkgd2FudCBhIFNlYWxlZCB0cmFpdD8N
Cg0KU2VhbGVkIHRyYWl0cyBhcmUgYSB2ZXJ5IG5pY2hlIGZlYXR1cmUuIFRoZSBtYWluIHVzZS1j
YXNlIGlzDQpmb3J3YXJkcy1jb21wYXRpYmlsaXR5LiBJdCdzIG5vdCBhIGJyZWFraW5nIGNoYW5n
ZSB0byBhZGQgYSBuZXcgbWV0aG9kDQp0byBhIHNlYWxlZCB0cmFpdCBiZWNhdXNlIG5vIGRvd25z
dHJlYW0gY3JhdGVzIGNvdWxkIGltcGxlbWVudCB0aGUNCnRyYWl0Lg0KDQpBbGljZQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
