Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE2491D1B6
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 30 Jun 2024 15:05:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 550E544343
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 30 Jun 2024 13:05:25 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id E8D3A3F04B
	for <linaro-mm-sig@lists.linaro.org>; Sun, 30 Jun 2024 13:05:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=FSoqsoL5;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1719752721;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7flKg/QNYquWhmiQ3CkCK3NT/w6qxOOletHqy/Yo3UQ=;
	b=FSoqsoL5uclvSY+A3/2nOau7ihMcNqU622fMXUMvNJkRlg647C2BlAFlaJL2Sl7+A8Oj7u
	GH+deHaodaESbALRPqFphjhFYM4el/6WQEmBkA3mWkiNkYqwhbQY2gMH9AzkiD3NyEp3J8
	lmv0afp8N1wRF9IXTK/3Od41AfffDgo=
Date: Sun, 30 Jun 2024 15:05:17 +0200
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>, Vinod Koul <vkoul@kernel.org>
In-Reply-To: <20240630113203.719d1daf@jic23-huawei>
References: <20240620122726.41232-1-paul@crapouillou.net> <171896438479.273533.11227587889239181030.b4-ty@kernel.org> <20240630113203.719d1daf@jic23-huawei>
Message-ID: <50F70D50-5A6C-4C38-93ED-500008C4BB2D@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Queue-Id: E8D3A3F04B
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[14];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2AKEWVQHUKNEPDJ7FMMVUUVGHI3O3WR6
X-Message-ID-Hash: 2AKEWVQHUKNEPDJ7FMMVUUVGHI3O3WR6
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, =?ISO-8859-1?Q?Christian_K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v12 0/7] iio: new DMABUF based API v12
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2AKEWVQHUKNEPDJ7FMMVUUVGHI3O3WR6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2084110689398283062=="

--===============2084110689398283062==
Content-Type: multipart/alternative;
 boundary=----VAJBQRHLFT3S3EKYR34CF2DU55YI97
Content-Transfer-Encoding: 7bit

------VAJBQRHLFT3S3EKYR34CF2DU55YI97
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Jonathan,

Fantastic news, thanks!

Cheers,
-Paul



Le 30 juin 2024 12:32:03 GMT+02:00, Jonathan Cameron <jic23@kernel=2Eorg> =
a =C3=A9crit=C2=A0:
>On Fri, 21 Jun 2024 15:36:24 +0530
>Vinod Koul <vkoul@kernel=2Eorg> wrote:
>
>> On Thu, 20 Jun 2024 14:27:19 +0200, Paul Cercueil wrote:
>> > Here's the v12 of my patchset that introduces DMABUF support to IIO=
=2E
>> >=20
>> > Apart from a small documentation fix, it reverts to using
>> > mutex_lock/mutex_unlock in one particular place, which used cleanup
>> > GOTOs (which don't play well with scope-managed cleanups)=2E
>> >=20
>> > Changelog:
>> > - [3/7]:
>> >     - Revert to mutex_lock/mutex_unlock in iio_buffer_attach_dmabuf()=
,
>> >       as it uses cleanup GOTOs
>> > - [6/7]:
>> >     - "obtained using=2E=2E=2E" -> "which can be obtained using=2E=2E=
=2E"
>> >=20
>> > [=2E=2E=2E] =20
>>=20
>> Applied, thanks!
>>=20
>> [1/7] dmaengine: Add API function dmaengine_prep_peripheral_dma_vec()
>>       commit: 5878853fc9389e7d0988d4b465a415cf96fd14fa
>> [2/7] dmaengine: dma-axi-dmac: Implement device_prep_peripheral_dma_vec
>>       commit: 74609e5686701ed8e8adc3082d15f009e327286d
>> [7/7] Documentation: dmaengine: Document new dma_vec API
>>       commit: 380afccc2a55e8015adae4266e8beff96ab620be
>
>Merged Vinod's topic branch and applied, 3,4,5,6 to the togreg
>branch of iio=2Egit=2E  Thanks all for the hard work on this one=2E
>Great to finally get there!
>
>Jonathan
>
>p=2Es=2E Last few weeks were about some complexities in the IIO tree
>unrelated to this set=2E
>
>>=20
>> Best regards,
>

------VAJBQRHLFT3S3EKYR34CF2DU55YI97
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"auto">Hi Jonathan,<br><br>Fantastic ne=
ws, thanks!<br><br>Cheers,<br>-Paul<br><br></div><br><br><div class=3D"gmai=
l_quote"><div dir=3D"auto">Le 30 juin 2024 12:32:03 GMT+02:00, Jonathan Cam=
eron &lt;jic23@kernel=2Eorg&gt; a =C3=A9crit=C2=A0:</div><blockquote class=
=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px sol=
id rgb(204, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail"><div dir=3D"auto">On Fri, 21 Jun 2024 15:36:24 +0530=
<br>Vinod Koul &lt;vkoul@kernel=2Eorg&gt; wrote:<br><br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px=
 solid #729fcf; padding-left: 1ex;"><div dir=3D"auto">On Thu, 20 Jun 2024 1=
4:27:19 +0200, Paul Cercueil wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #ad7fa8; p=
adding-left: 1ex;"><div dir=3D"auto">Here's the v12 of my patchset that int=
roduces DMABUF support to IIO=2E<br><br>Apart from a small documentation fi=
x, it reverts to using<br>mutex_lock/mutex_unlock in one particular place, =
which used cleanup<br>GOTOs (which don't play well with scope-managed clean=
ups)=2E<br><br>Changelog:<br>- [3/7]:<br>    - Revert to mutex_lock/mutex_u=
nlock in iio_buffer_attach_dmabuf(),<br>      as it uses cleanup GOTOs<br>-=
 [6/7]:<br>    - "obtained using=2E=2E=2E" -&gt; "which can be obtained usi=
ng=2E=2E=2E"<br><br>[=2E=2E=2E]  <br></div></blockquote><div dir=3D"auto"><=
br>Applied, thanks!<br><br>[1/7] dmaengine: Add API function dmaengine_prep=
_peripheral_dma_vec()<br>      commit: 5878853fc9389e7d0988d4b465a415cf96fd=
14fa<br>[2/7] dmaengine: dma-axi-dmac: Implement device_prep_peripheral_dma=
_vec<br>      commit: 74609e5686701ed8e8adc3082d15f009e327286d<br>[7/7] Doc=
umentation: dmaengine: Document new dma_vec API<br>      commit: 380afccc2a=
55e8015adae4266e8beff96ab620be<br></div></blockquote><div dir=3D"auto"><br>=
Merged Vinod's topic branch and applied, 3,4,5,6 to the togreg<br>branch of=
 iio=2Egit=2E  Thanks all for the hard work on this one=2E<br>Great to fina=
lly get there!<br><br>Jonathan<br><br>p=2Es=2E Last few weeks were about so=
me complexities in the IIO tree<br>unrelated to this set=2E<br><br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; borde=
r-left: 1px solid #729fcf; padding-left: 1ex;"><div dir=3D"auto"><br>Best r=
egards,<br></div></blockquote><div dir=3D"auto"><br></div></pre></blockquot=
e></div></body></html>
------VAJBQRHLFT3S3EKYR34CF2DU55YI97--

--===============2084110689398283062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2084110689398283062==--
