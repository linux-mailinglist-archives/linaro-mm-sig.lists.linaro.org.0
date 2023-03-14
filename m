Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 358BD6C42E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 07:19:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 388793F330
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 06:19:05 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id A29933EA31
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Mar 2023 13:45:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=sWxk1PG1;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1678801532;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=i/T9c4oh6jhKm3lkBJe8ywcuorjh7EGMXCUOVMZ96g4=;
	b=sWxk1PG1Pj5OVsatfswgHlPo2d7i9shtR7gtMsjiz0b3pgfUVFGMhR2XguF0dGXLfgqxIv
	/pfjgergo3cA2BFSzTGr63cEfraGKSOVTaMjche3PqXUT+mf+gub+YwDmRsRR4MZ4x1GVR
	+kEJB+xpbYLyHUxAVLKOkW1SwEmjG28=
Message-ID: <861288e8c685eb9cbbf9f71cd031e7015de3aced.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: kernel test robot <lkp@intel.com>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>
Date: Tue, 14 Mar 2023 14:45:19 +0100
In-Reply-To: <202303142140.ZQsw4C4V-lkp@intel.com>
References: <20230314105257.17345-3-paul@crapouillou.net>
	 <202303142140.ZQsw4C4V-lkp@intel.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A29933EA31
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	R_SPF_ALLOW(-0.20)[+a];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,intel.com:email,git-scm.com:url,raw.githubusercontent.com:url,aposti.net:rdns,aposti.net:helo];
	DKIM_TRACE(0.00)[crapouillou.net:+];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[]
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CW7736GMHYC7ATE2QHGJUFLVJWWGBNUT
X-Message-ID-Hash: CW7736GMHYC7ATE2QHGJUFLVJWWGBNUT
X-Mailman-Approved-At: Wed, 22 Mar 2023 06:17:47 +0000
CC: oe-kbuild-all@lists.linux.dev, michael.hennerich@analog.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nuno.sa@analog.com, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CW7736GMHYC7ATE2QHGJUFLVJWWGBNUT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbWFyZGkgMTQgbWFycyAyMDIzIMOgIDIxOjQxICswODAwLCBrZXJuZWwgdGVzdCByb2JvdCBh
IMOpY3JpdMKgOgo+IEhpIFBhdWwsCj4gCj4gSSBsb3ZlIHlvdXIgcGF0Y2ghIFBlcmhhcHMgc29t
ZXRoaW5nIHRvIGltcHJvdmU6Cj4gCj4gW2F1dG8gYnVpbGQgdGVzdCBXQVJOSU5HIG9uIHVzYi91
c2ItdGVzdGluZ10KPiBbYWxzbyBidWlsZCB0ZXN0IFdBUk5JTkcgb24gdXNiL3VzYi1uZXh0IHVz
Yi91c2ItbGludXMgbGludXMvbWFzdGVyCj4gdjYuMy1yYzIgbmV4dC0yMDIzMDMxNF0KPiBbSWYg
eW91ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9uZyBnaXQgdHJlZSwga2luZGx5IGRyb3Ag
dXMgYQo+IG5vdGUuCj4gQW5kIHdoZW4gc3VibWl0dGluZyBwYXRjaCwgd2Ugc3VnZ2VzdCB0byB1
c2UgJy0tYmFzZScgYXMgZG9jdW1lbnRlZAo+IGluCj4gaHR0cHM6Ly9naXQtc2NtLmNvbS9kb2Nz
L2dpdC1mb3JtYXQtcGF0Y2gjX2Jhc2VfdHJlZV9pbmZvcm1hdGlvbl0KPiAKPiB1cmw6wqDCoMKg
Cj4gaHR0cHM6Ly9naXRodWIuY29tL2ludGVsLWxhYi1sa3AvbGludXgvY29tbWl0cy9QYXVsLUNl
cmN1ZWlsL3VzYi1nYWRnZXQtU3VwcG9ydC1hbHJlYWR5LW1hcHBlZC1ETUEtU0dzLzIwMjMwMzE0
LTE4NTUyMgo+IGJhc2U6wqDCoAo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L2dyZWdraC91c2IuZ2l0wqB1c2ItCj4gdGVzdGluZwo+IHBhdGNoIGxpbms6
wqDCoMKgCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIzMDMxNDEwNTI1Ny4xNzM0NS0z
LXBhdWwlNDBjcmFwb3VpbGxvdS5uZXQKPiBwYXRjaCBzdWJqZWN0OiBbUEFUQ0ggMi8yXSB1c2I6
IGdhZGdldDogZnVuY3Rpb25mczogQWRkIERNQUJVRiBpbXBvcnQKPiBpbnRlcmZhY2UKPiBjb25m
aWc6IG02OGstYWxseWVzY29uZmlnCj4gKGh0dHBzOi8vZG93bmxvYWQuMDEub3JnLzBkYXktY2kv
YXJjaGl2ZS8yMDIzMDMxNC8yMDIzMDMxNDIxNDAuWlFzdzRDCj4gNFYtbGtwQGludGVsLmNvbS9j
b25maWcpCj4gY29tcGlsZXI6IG02OGstbGludXgtZ2NjIChHQ0MpIDEyLjEuMAo+IHJlcHJvZHVj
ZSAodGhpcyBpcyBhIFc9MSBidWlsZCk6Cj4gwqDCoMKgwqDCoMKgwqAgd2dldAo+IGh0dHBzOi8v
cmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9pbnRlbC9sa3AtdGVzdHMvbWFzdGVyL3NiaW4vbWFr
ZS5jcm9zcwo+IMKgLU8gfi9iaW4vbWFrZS5jcm9zcwo+IMKgwqDCoMKgwqDCoMKgIGNobW9kICt4
IH4vYmluL21ha2UuY3Jvc3MKPiDCoMKgwqDCoMKgwqDCoCAjCj4gaHR0cHM6Ly9naXRodWIuY29t
L2ludGVsLWxhYi1sa3AvbGludXgvY29tbWl0LzRlZTM2NGVkNWQxMTJjNDU1MDM0NGZkMDM3ZjRl
MWVmN2NjNDE4NzgKPiDCoMKgwqDCoMKgwqDCoCBnaXQgcmVtb3RlIGFkZCBsaW51eC1yZXZpZXcK
PiBodHRwczovL2dpdGh1Yi5jb20vaW50ZWwtbGFiLWxrcC9saW51eAo+IMKgwqDCoMKgwqDCoMKg
IGdpdCBmZXRjaCAtLW5vLXRhZ3MgbGludXgtcmV2aWV3IFBhdWwtQ2VyY3VlaWwvdXNiLWdhZGdl
dC0KPiBTdXBwb3J0LWFscmVhZHktbWFwcGVkLURNQS1TR3MvMjAyMzAzMTQtMTg1NTIyCj4gwqDC
oMKgwqDCoMKgwqAgZ2l0IGNoZWNrb3V0IDRlZTM2NGVkNWQxMTJjNDU1MDM0NGZkMDM3ZjRlMWVm
N2NjNDE4NzgKPiDCoMKgwqDCoMKgwqDCoCAjIHNhdmUgdGhlIGNvbmZpZyBmaWxlCj4gwqDCoMKg
wqDCoMKgwqAgbWtkaXIgYnVpbGRfZGlyICYmIGNwIGNvbmZpZyBidWlsZF9kaXIvLmNvbmZpZwo+
IMKgwqDCoMKgwqDCoMKgIENPTVBJTEVSX0lOU1RBTExfUEFUSD0kSE9NRS8wZGF5IENPTVBJTEVS
PWdjYy0xMi4xLjAKPiBtYWtlLmNyb3NzIFc9MSBPPWJ1aWxkX2RpciBBUkNIPW02OGsgb2xkZGVm
Y29uZmlnCj4gwqDCoMKgwqDCoMKgwqAgQ09NUElMRVJfSU5TVEFMTF9QQVRIPSRIT01FLzBkYXkg
Q09NUElMRVI9Z2NjLTEyLjEuMAo+IG1ha2UuY3Jvc3MgVz0xIE89YnVpbGRfZGlyIEFSQ0g9bTY4
ayBTSEVMTD0vYmluL2Jhc2ggZHJpdmVycy91c2IvCj4gCj4gSWYgeW91IGZpeCB0aGUgaXNzdWUs
IGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZyB3aGVyZSBhcHBsaWNhYmxlCj4gPiBSZXBvcnRlZC1i
eToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gPiBMaW5rOgo+ID4gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvb2Uta2J1aWxkLWFsbC8yMDIzMDMxNDIxNDAuWlFzdzRDNFYtbGtw
QGludGVsLmNvbS8KPiAKPiBBbGwgd2FybmluZ3MgKG5ldyBvbmVzIHByZWZpeGVkIGJ5ID4+KToK
PiAKPiA+ID4gZHJpdmVycy91c2IvZ2FkZ2V0L2Z1bmN0aW9uL2ZfZnMuYzoxNDAxOjU6IHdhcm5p
bmc6IG5vIHByZXZpb3VzCj4gPiA+IHByb3RvdHlwZSBmb3IgJ2Zmc19kbWFfcmVzdl9sb2NrJyBb
LVdtaXNzaW5nLXByb3RvdHlwZXNdCj4gwqDCoMKgIDE0MDEgfCBpbnQgZmZzX2RtYV9yZXN2X2xv
Y2soc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwgYm9vbAo+IG5vbmJsb2NrKQo+IMKgwqDCoMKgwqDC
oMKgwqAgfMKgwqDCoMKgIF5+fn5+fn5+fn5+fn5+fn5+CgpJbmRlZWQsIG1pc3NpbmcgYSAic3Rh
dGljIiBoZXJlLiBUaGFuayB5b3UgUm9ib3QuCgpDaGVlcnMsCi1QYXVsCgo+IAo+IAo+IHZpbSAr
L2Zmc19kbWFfcmVzdl9sb2NrICsxNDAxIGRyaXZlcnMvdXNiL2dhZGdldC9mdW5jdGlvbi9mX2Zz
LmMKPiAKPiDCoCAxNDAwwqDCoAo+ID4gMTQwMcKgwqDCoMKgaW50IGZmc19kbWFfcmVzdl9sb2Nr
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIGJvb2wKPiA+IG5vbmJsb2NrKQo+IMKgIDE0MDLCoMKg
ewo+IMKgIDE0MDPCoMKgwqDCoMKgwqDCoMKgwqDCoGludCByZXQ7Cj4gwqAgMTQwNMKgwqAKPiDC
oCAxNDA1wqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPSBkbWFfcmVzdl9sb2NrX2ludGVycnVwdGli
bGUoZG1hYnVmLT5yZXN2LAo+IE5VTEwpOwo+IMKgIDE0MDbCoMKgwqDCoMKgwqDCoMKgwqDCoGlm
IChyZXQpIHsKPiDCoCAxNDA3wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYg
KHJldCAhPSAtRURFQURMSykKPiDCoCAxNDA4wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gb3V0Owo+IMKgIDE0MDnCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAobm9uYmxvY2spIHsKPiDCoCAxNDEwwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9IC1FQlVTWTsKPiDC
oCAxNDExwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGdvdG8gb3V0Owo+IMKgIDE0MTLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9
Cj4gwqAgMTQxM8KgwqAKPiDCoCAxNDE0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0ID0KPiBkbWFfcmVzdl9sb2NrX3Nsb3dfaW50ZXJydXB0aWJsZShkbWFidWYtPnJlc3Ys
IE5VTEwpOwo+IMKgIDE0MTXCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiDCoCAxNDE2wqDCoAo+IMKg
IDE0MTfCoMKgb3V0Ogo+IMKgIDE0MTjCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7Cj4g
wqAgMTQxOcKgwqB9Cj4gwqAgMTQyMMKgwqAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
