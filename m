Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A00A7BA01
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 11:32:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A986F44789
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 09:32:41 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by lists.linaro.org (Postfix) with ESMTPS id CE1F63EA16
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Apr 2025 09:32:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=JtdmBXwI;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.208.177 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-30bf5d7d107so14540991fa.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Apr 2025 02:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743759150; x=1744363950; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DJa0y5uHqB+uXYxg4Ee5P8Mqg/g0/KhhIdf1SuA6v4A=;
        b=JtdmBXwIorsBVW3NVTzogZZIq0aA9WP0gOD3Jj69hVHnA4E0Co6eo4DWkVLFP93OPG
         GNMb2HsRvaPJ3HWWZcw0gmBZgoRJlrbhzB1p5pJdhEYIRMXfWLnCb9PsFnxrk1O5WRKe
         eauK9vv/+qO/SaJ9+ywrFieCorP3Q7Q53A+0s27HbUsmlOmA92yw/KsnUGGI7tdRMqCl
         qFbuAKVP9JeSbxA+fVSkppdwuzRLeHuPFgNMj1mY4Bf96ASC4SwXVqj4JGkDoOqqaiuZ
         ZX7zuB/ygqTL/Az3Ux+xLe6B0cLczPlQLhQGLJ8QAmDxdtDxUYbudEcOfZuLC4VBO7Bn
         YIBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743759150; x=1744363950;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DJa0y5uHqB+uXYxg4Ee5P8Mqg/g0/KhhIdf1SuA6v4A=;
        b=Wy00INO7JHPLmNHMRJ65yR35uzbhIcEDNDRh+AOsN08awmNMbldjw7Uov9gsal6LUa
         RoMwcHYKIfCle1GN6NG7Z+QLGugCx6+BPvI1/f6VpD9WSeI5RALRlRPdHyvURe9loySa
         EBKkrwUB1vKn62Tk6SmfMg7y49TDuXCE790f5bi3LAv1h3ND67BEfWyZ+9lmno9J74Xp
         3FKi9+CekYf5HkKULsB/o7Lr3xUCXdABYY3k3BbWAnZmOOIafOjmR3NbuqkEdPSyHqeC
         4eDkbI0iAGo81m/bdz80dU7OsnjqHFflToVYm+NDBBCJR9KDsgT1tknq3J5BzwTfp8aM
         BXPw==
X-Forwarded-Encrypted: i=1; AJvYcCW2EkgFKDpkzVRIM7LiB+yCpd8sjg3mq9ab3MGhDwlhs0jiXnXyqRCPSqLTQVMEjBbflAiYBIIhmwJl5nYP@lists.linaro.org
X-Gm-Message-State: AOJu0Yz/2rZH65QuUPi/wOznbBmHfgQjSjqcQUVEjQ15UXDk8KQcE5eG
	2c/izTgl1tmuof/GEwm9hzCd13SPkq0uIdvIkx21cb65Ew3NdbiJ5WpArDcW6FSAW4kbN1LOhB0
	JpyE=
X-Gm-Gg: ASbGnctVENCCHX09Do/41lxS09R90oTWxDvw/2eEbnx6yn4hsd/bFVd04a9ouPFwEk8
	ZwGyrPebp4rRT9kpxwtbYuDzlE1cZl4+IYVMbYTHWUcoCAkVnPz+jSTV9vRaYCXGdiqLJajCjpR
	9KF8FAYHicaCzZojAZkaQ9klbr/l6YbyGf7lSymAOinMmPBJ3ndi1fcuEmhB/DL/UVpU9wvkMFR
	hDf9i9k7bJMF390bDV5xR1PxHYZPn7P+DUqoe1jb1gqflrVmO8HV+z2WuA/vKCAbCWiFWp3mEs5
	MVm8QaJ/V18ZwBRn9/c0djMe0ciT43viamfFWuBW9wO07y9IPA==
X-Google-Smtp-Source: AGHT+IG+NDQDuY7wpbCJM2rLv7MTUqbCkkmKdHj5rYcXcQpcsNWGZu7a+1mkk53652ueI0HgxX47pg==
X-Received: by 2002:a05:6000:250a:b0:391:12a5:3cb3 with SMTP id ffacd0b85a97d-39d0873fd19mr1619780f8f.3.1743755263387;
        Fri, 04 Apr 2025 01:27:43 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39c3020dacfsm3780694f8f.72.2025.04.04.01.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 01:27:42 -0700 (PDT)
Date: Fri, 4 Apr 2025 11:27:39 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <03c838ab-3bc8-4e5a-9f0a-331254701b0c@stanley.mountain>
References: <5dbd6105-3acf-47ad-84d6-2920171916ac@stanley.mountain>
 <0e832ed8-9692-43ba-869d-8db3b419f3a9@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e832ed8-9692-43ba-869d-8db3b419f3a9@amd.com>
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.177:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,linaro.org:email,stanley.mountain:mid];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.208.177:from];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CE1F63EA16
Message-ID-Hash: THDGO7WGXHJGS53DOOGVGYHGT3T7FFGH
X-Message-ID-Hash: THDGO7WGXHJGS53DOOGVGYHGT3T7FFGH
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Dmitry Baryshkov <lumag@kernel.org>, Pekka Paalanen <pekka.paalanen@collabora.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/sw_sync: Decrement refcount on error in sw_sync_ioctl_get_deadline()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 31, 2025 at 02:02:44PM +0200, Christian K=F6nig wrote:
> Am 31.03.25 um 11:45 schrieb Dan Carpenter:
> > Call dma_fence_put(fence) before returning an error on this error path.
> >
> > Fixes: 70e67aaec2f4 ("dma-buf/sw_sync: Add fence deadline support")
> > Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> > ---
> >  drivers/dma-buf/sw_sync.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/dma-buf/sw_sync.c b/drivers/dma-buf/sw_sync.c
> > index f5905d67dedb..b7615c5c6cac 100644
> > --- a/drivers/dma-buf/sw_sync.c
> > +++ b/drivers/dma-buf/sw_sync.c
> > @@ -438,8 +438,10 @@ static int sw_sync_ioctl_get_deadline(struct sync_=
timeline *obj, unsigned long a
> >  		return -EINVAL;
> > =20
> >  	pt =3D dma_fence_to_sync_pt(fence);
> > -	if (!pt)
> > +	if (!pt) {
> > +		dma_fence_put(fence);
> >  		return -EINVAL;
> > +	}
>=20
> Good catch.
>=20
> I think it would be cleaner if we add an error label and then use "ret =
=3D -EINVAL; goto error;" here as well as a few lines below when ret is set=
 to -ENOENT.
>=20
> This way we can also avoid the ret =3D 0 in the declaration and let the c=
ompiler actually check the lifetime of the assignment.
>=20

I had some issues with my email and it silently ate a bunch of outgoing
email without saving a single trace of anything I had sent.  I see
this was one that was eaten.

Unwind ladders don't work really well for things where you just take it
for a little while and then drop it a few lines later.  Such as here you
take reference and then drop it or you take a lock and then drop it.
Normally, you can add things to anywere in the unwind ladder but if you
add an unlock to the ladder than you to add a weird bunny hop if the goto
isn't holding the lock.  It ends up getting confusing.  With that kind of
thing, I prefer to do the unlock before the goto.

free_c:
	free(c);
	goto free_b;  <-- bunny hop;
unlock:
	unlock();
free_b:
	free(b);
free_a:
	free(a);

	return ret;

regards,
dan carpenter

diff --git a/drivers/dma-buf/sw_sync.c b/drivers/dma-buf/sw_sync.c
index f5905d67dedb..22a808995f10 100644
--- a/drivers/dma-buf/sw_sync.c
+++ b/drivers/dma-buf/sw_sync.c
@@ -438,15 +438,17 @@ static int sw_sync_ioctl_get_deadline(struct sync_tim=
eline *obj, unsigned long a
 		return -EINVAL;
=20
 	pt =3D dma_fence_to_sync_pt(fence);
-	if (!pt)
-		return -EINVAL;
+	if (!pt) {
+		ret =3D -EINVAL;
+		goto put_fence;
+	}
=20
 	spin_lock_irqsave(fence->lock, flags);
-	if (test_bit(SW_SYNC_HAS_DEADLINE_BIT, &fence->flags)) {
-		data.deadline_ns =3D ktime_to_ns(pt->deadline);
-	} else {
+	if (!test_bit(SW_SYNC_HAS_DEADLINE_BIT, &fence->flags)) {
 		ret =3D -ENOENT;
+		goto unlock;
 	}
+	data.deadline_ns =3D ktime_to_ns(pt->deadline);
 	spin_unlock_irqrestore(fence->lock, flags);
=20
 	dma_fence_put(fence);
@@ -458,6 +460,13 @@ static int sw_sync_ioctl_get_deadline(struct sync_time=
line *obj, unsigned long a
 		return -EFAULT;
=20
 	return 0;
+
+unlock:
+	spin_unlock_irqrestore(fence->lock, flags);
+put_fence:
+	dma_fence_put(fence);
+
+	return ret;
 }
=20
 static long sw_sync_ioctl(struct file *file, unsigned int cmd,


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
