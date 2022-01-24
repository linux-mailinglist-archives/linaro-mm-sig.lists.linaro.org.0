Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A79ED498E0A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 20:43:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1BE13ED6C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 19:43:34 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 8E9793EE91
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 19:43:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B0451B81188;
	Mon, 24 Jan 2022 19:43:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF20BC340E5;
	Mon, 24 Jan 2022 19:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1643053400;
	bh=N7iqN2dtcEyo4qkf5F6uhGxw3W2pDTN7WGAfMlTzNYY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YEb/uNPJdAMv0TcET6taoAGqFUwT7eddseuBadkveWtDCUg5XV6zvz/09XQeN8H86
	 AN5Xl3vuC/s6YirB7KRI1T604aZh2EumlpW2KIRN9n7fLHRCxmlVDp8EXo/H8iVV6G
	 qoakHZkT44kZE0n3J6dkuK2yS8iVTx5dhwsbiVlI=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Mon, 24 Jan 2022 19:36:40 +0100
Message-Id: <20220124184025.645252287@linuxfoundation.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220124184024.407936072@linuxfoundation.org>
References: <20220124184024.407936072@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Message-ID-Hash: 333UP2BBAKFXLM5RG2QV4AE2WVTYQZTY
X-Message-ID-Hash: 333UP2BBAKFXLM5RG2QV4AE2WVTYQZTY
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 5.10 035/563] dma_fence_array: Fix PENDING_ERROR leak in dma_fence_array_signaled()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/333UP2BBAKFXLM5RG2QV4AE2WVTYQZTY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
Pg0KDQpjb21taXQgOTVkMzU4Mzg4ODBmYjA0MGNjYjlmZTRhNDg4MTZiZDBjOGI2MmRmNSB1cHN0
cmVhbS4NCg0KSWYgYSBkbWFfZmVuY2VfYXJyYXkgaXMgcmVwb3J0ZWQgc2lnbmFsZWQgYnkgYSBj
YWxsIHRvDQpkbWFfZmVuY2VfaXNfc2lnbmFsZWQoKSwgaXQgbWF5IGxlYWsgdGhlIFBFTkRJTkdf
RVJST1Igc3RhdHVzLg0KDQpGaXggdGhpcyBieSBjbGVhcmluZyB0aGUgUEVORElOR19FUlJPUiBz
dGF0dXMgaWYgd2UgcmV0dXJuIHRydWUgaW4NCmRtYV9mZW5jZV9hcnJheV9zaWduYWxlZCgpLg0K
DQp2MjoNCi0gVXBkYXRlIENjIGxpc3QsIGFuZCBhZGQgUi1iLg0KDQpGaXhlczogMWY3MGI4Yjgx
MmYzICgiZG1hLWZlbmNlOiBQcm9wYWdhdGUgZXJyb3JzIHRvIGRtYS1mZW5jZS1hcnJheSBjb250
YWluZXIiKQ0KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPg0KQ2M6
IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQpDYzogR3VzdGF2byBQYWRv
dmFuIDxndXN0YXZvQHBhZG92YW4ub3JnPg0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnDQpDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjUuNCsNClNpZ25lZC1vZmYtYnk6
IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4NClJl
dmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpM
aW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyMTEx
MjkxNTI3MjcuNDQ4OTA4LTEtdGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20NClNpZ25l
ZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+
DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMgfCAgICA2ICsrKysrLQ0K
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0KLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLWFycmF5LmMNCkBAIC0xMDQsNyArMTA0LDExIEBAIHN0YXRpYyBib29sIGRtYV9m
ZW5jZV9hcnJheV9zaWduYWxlZChzdHINCiB7DQogCXN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFy
cmF5ID0gdG9fZG1hX2ZlbmNlX2FycmF5KGZlbmNlKTsNCiANCi0JcmV0dXJuIGF0b21pY19yZWFk
KCZhcnJheS0+bnVtX3BlbmRpbmcpIDw9IDA7DQorCWlmIChhdG9taWNfcmVhZCgmYXJyYXktPm51
bV9wZW5kaW5nKSA+IDApDQorCQlyZXR1cm4gZmFsc2U7DQorDQorCWRtYV9mZW5jZV9hcnJheV9j
bGVhcl9wZW5kaW5nX2Vycm9yKGFycmF5KTsNCisJcmV0dXJuIHRydWU7DQogfQ0KIA0KIHN0YXRp
YyB2b2lkIGRtYV9mZW5jZV9hcnJheV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0K
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
