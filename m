Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3824B87E2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 13:42:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 479A03EEC0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 12:42:52 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 48C773ED2A
	for <linaro-mm-sig@lists.linaro.org>; Sun, 13 Feb 2022 19:25:37 +0000 (UTC)
Date: Sun, 13 Feb 2022 19:25:26 +0000
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>
Message-Id: <EMC97R.6CF1131XF9J13@crapouillou.net>
In-Reply-To: <20220213185740.0322a83d@jic23-huawei>
References: <20220207125933.81634-1-paul@crapouillou.net>
	<20220207125933.81634-2-paul@crapouillou.net>
	<20220213185740.0322a83d@jic23-huawei>
MIME-Version: 1.0
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WEM2WM2MAAQOUSP5XHBG7HYYLLKNTLJE
X-Message-ID-Hash: WEM2WM2MAAQOUSP5XHBG7HYYLLKNTLJE
X-Mailman-Approved-At: Wed, 16 Feb 2022 12:42:33 +0000
CC: Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Christian =?iso-8859-1?b?S/ZuaWc=?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Alexandru Ardelean <ardeleanalex@gmail.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/12] iio: buffer-dma: Get rid of outgoing queue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WEM2WM2MAAQOUSP5XHBG7HYYLLKNTLJE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable

Hi Jonathan,

Le dim., f=E9vr. 13 2022 at 18:57:40 +0000, Jonathan Cameron=20
<jic23@kernel.org> a =E9crit :
> On Mon,  7 Feb 2022 12:59:22 +0000
> Paul Cercueil <paul@crapouillou.net> wrote:
>=20
>>  The buffer-dma code was using two queues, incoming and outgoing, to
>>  manage the state of the blocks in use.
>>=20
>>  While this totally works, it adds some complexity to the code,
>>  especially since the code only manages 2 blocks. It is much easier=20
>> to
>>  just check each block's state manually, and keep a counter for the=20
>> next
>>  block to dequeue.
>>=20
>>  Since the new DMABUF based API wouldn't use the outgoing queue=20
>> anyway,
>>  getting rid of it now makes the upcoming changes simpler.
>>=20
>>  With this change, the IIO_BLOCK_STATE_DEQUEUED is now useless, and=20
>> can
>>  be removed.
>>=20
>>  v2: - Only remove the outgoing queue, and keep the incoming queue,=20
>> as we
>>        want the buffer to start streaming data as soon as it is=20
>> enabled.
>>      - Remove IIO_BLOCK_STATE_DEQUEUED, since it is now functionally=20
>> the
>>        same as IIO_BLOCK_STATE_DONE.
>>=20
>>  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
>>  ---
>=20
> Trivial process thing but change log should be here, not above as we=20
> don't
> want it to end up in the main git log.

I'm kinda used to do this now, it's the policy for sending patches to=20
the DRM tree. I like it because "git notes" disappear after rebases and=20
it's a pain. At least like this I don't lose the changelog.

But okay, I'll change it for v3, if there's a v3.

Cheers,
-Paul

>>   drivers/iio/buffer/industrialio-buffer-dma.c | 44=20
>> ++++++++++----------
>>   include/linux/iio/buffer-dma.h               |  7 ++--
>>   2 files changed, 26 insertions(+), 25 deletions(-)
>>=20


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
