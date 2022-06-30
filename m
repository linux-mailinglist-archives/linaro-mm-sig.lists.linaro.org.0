Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6436256138B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jun 2022 09:47:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76E043F1B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jun 2022 07:47:42 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by lists.linaro.org (Postfix) with ESMTPS id 0FE533EA26
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jun 2022 07:47:38 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id z21so32201195lfb.12
        for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jun 2022 00:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version;
        bh=UJma+hccqR5aqdoWvaqvkY0KbcCLV9ny5JEaD9S2u7M=;
        b=YsssRIgBJ4hH6NGsrQmjAexl+5bN6RdvMeHUlgervuYq9fjv0KDDtquiYHBTQN8rgm
         01kBucqpHWTcK+SFwwFoSOTZkRUXfCtLFujjBy0SPHeNvSXv2brREZ10dKuGrlRbsA2P
         +JA2dWwNnTazYoVAzL48+cpufcqr0kZ6Cc74TtQhT7w9rPrX4hPktewBtWTw95tWIdUr
         tpGqtqRVBQhvHrNFCv955subKAs2NmuQ2AEuXMFFbDwU/ds0+amXc59GR0IjPkCZhcTp
         qkeIs8TPpl6asX0zrUBybwwS/oiBqo+pM/sNgMUfMQZBerqcDmkZQMIwcCl9QxUrsqzv
         0Ehw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version;
        bh=UJma+hccqR5aqdoWvaqvkY0KbcCLV9ny5JEaD9S2u7M=;
        b=Bep66/3vMD1jgYWjheZCTuNkBniUnCvKAOWKX9fURhNBwHTv7ihcPDlDO+Ap95O1X/
         iaQml3+vAvMSzq/utih68F6Z1qO+JjC5rjiZnxIJZBLmmfLu0+jNVsCWYln3pBM/vbGo
         gDAVE67ApO3gL/KFBgZGvkZBF53V1qxBRU73kNjTO9ToycfhjBDpgJ4SvNsqtTTziB5A
         sWFSQDFIwrUtYZOiSpaiV3ZqVRJdhPoTRTzBuUZjvjxV/Q0VWdZ+a7mQiw0fITB6GMQD
         MLSjXNXy6Nw4wUJIzu0IhRNjL4ZBwMlW7SbaagRYnRByRAUZn2IgQkgVqesrJIbCgBu6
         fMWg==
X-Gm-Message-State: AJIora/dYmLgYqpgbg3k9jiXYyeRZ4ayvnaW45R2sz87Kg/lw11pdD6V
	H8aUu2TT17aZP2i2pMeB6O0=
X-Google-Smtp-Source: AGRyM1tGRBxLTD0woETHcejT21FiPEBCTfhEzG8IQ/H7WUS7PKFJs64Tpk6PnTQBlZnU2Vmy5JcjQg==
X-Received: by 2002:ac2:44b1:0:b0:47f:6279:5f45 with SMTP id c17-20020ac244b1000000b0047f62795f45mr4417086lfm.283.1656575256706;
        Thu, 30 Jun 2022 00:47:36 -0700 (PDT)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id c4-20020a196544000000b0047f6fe39bb9sm2967958lfj.27.2022.06.30.00.47.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 00:47:36 -0700 (PDT)
Date: Thu, 30 Jun 2022 10:47:25 +0300
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Dennis Tsiang <dennis.tsiang@arm.com>
Message-ID: <20220630104725.602bff9a@eldfell>
In-Reply-To: <o1qcCo8e19pmmNe-YJbPkmu4SBrOQ_E3u7eqdrcXUzdBccLtFswL_ARTpbrX9C10tippuy5ieXAsqdf7H47JuT7Hqa1NlizAPqVuRM0kRt4=@emersion.fr>
References: <AS8PR08MB81117652E417826E741154B8F8B99@AS8PR08MB8111.eurprd08.prod.outlook.com>
	<20220627175026.6a5dd239@eldfell>
	<05513f59-0bd9-77cd-36d4-41027bc339be@arm.com>
	<o1qcCo8e19pmmNe-YJbPkmu4SBrOQ_E3u7eqdrcXUzdBccLtFswL_ARTpbrX9C10tippuy5ieXAsqdf7H47JuT7Hqa1NlizAPqVuRM0kRt4=@emersion.fr>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Message-ID-Hash: ZWP4AZCPKD4V32YN5FUKDW4SH54W3UBB
X-Message-ID-Hash: ZWP4AZCPKD4V32YN5FUKDW4SH54W3UBB
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simon Ser <contact@emersion.fr>, Normunds Rieksts <Normunds.Rieksts@arm.com>, airlied@linux.ie, tzimmermann@suse.de, Liviu Dudau <Liviu.Dudau@arm.com>, linux-kernel@vger.kernel.org, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, david.harvey-macaulay@arm.com, Lisa Wu <lisa.wu@arm.com>, nd <nd@arm.com>, sumit.semwal@linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/1] [RFC] drm/fourcc: Add new unsigned R16_UINT/RG1616_UINT formats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZWP4AZCPKD4V32YN5FUKDW4SH54W3UBB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8203748854779754969=="

--===============8203748854779754969==
Content-Type: multipart/signed; boundary="Sig_/PWI1bJaQrT8/Yn7UW=rAv+v";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/PWI1bJaQrT8/Yn7UW=rAv+v
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 29 Jun 2022 14:53:49 +0000
Simon Ser <contact@emersion.fr> wrote:

> On Wednesday, June 29th, 2022 at 16:46, Dennis Tsiang <dennis.tsiang@arm.=
com> wrote:
>=20
> > Thanks for your comments. This is not intended to be used for KMS, where
> > indeed there would be no difference. This proposal is for other Graphics
> > APIs such as Vulkan, which requires the application to be explicit
> > upfront about how they will interpret the data, whether that be UNORM,
> > UINT .etc. We want to be able to import dma_bufs which create a VkImage
> > with a "_UINT" VkFormat. However there is currently no explicit mapping
> > between the DRM fourccs + modifiers combos to "_UINT" VkFormats. One
> > solution is to encode that into the fourccs, which is what this RFC is
> > proposing. =20
>=20
> As a general comment, I don't think it's reasonable to encode all of the
> VkFormat information inside DRM FourCC. For instance, VkFormat has SRGB/U=
NORM
> variants which describe whether pixel values are electrical or optical
> (IOW, EOTF-encoded or not). Moreover, other APIs may encode different
> information in their format enums.

Yeah, do not add any of that information to the DRM pixel format codes.

There is *so much* other stuff you also need to define than what's
already mentioned, and which bits you need for the API at hand depends
totally on the API at hand. After the API has defined some parts of the
metadata, the API user has to take care of the remaining parts of the
metadata in other ways, like dynamic range or color space.

Besides, when you deal with dmabuf, you already need to pass a lot of
metadata explicitly, like the pixel format, width, height, stride,
modifier, etc. so it's better to add more of those (like we will be
doing in Wayland, and not specific to dmabuf even) than to try make
pixel formats a huge mess through combinatorial explosion and sometimes
partial and sometimes conflicting image metadata.

You might be able to get a glimpse of what all metadata there could be
by reading
https://gitlab.freedesktop.org/pq/color-and-hdr/-/blob/main/doc/pixels_colo=
r.md
.

Compare Vulkan formats to e.g.
https://docs.microsoft.com/en-us/windows/win32/api/dxgicommon/ne-dxgicommon=
-dxgi_color_space_type
and you'll see that while DXGI color space enumeration is mostly about
other stuff, it also has overlap with Vulkan formats I think, at least
the SRGB vs. not part.

Btw. practically all buffers you see used, especially if they are 8
bpc, they are almost guaranteed to be "SRGB" non-linearly encoded, but
do you ever see that fact being explicitly communicated?

Then there is the question that if you have an SRGB-encoded buffer, do
you want to read out SRGB-encoded or linear values? That depends on
what you are doing with the buffer, so if you always mapped dmabuf to
Vulkan SRGB formats (or always to non-SRGB formats), then you need some
other way in Vulkan for the app to say whether to sample encoded or
linear (electrical or optical) values. And whether texture filtering is
done in encoded or linear space, because that makes a difference too.

IOW, there are cases where the format mapping depends on the user of the
buffer and not only on the contents of the buffer.

Therefore you simply cannot create a static mapping table between two
format definition systems when the two systems are fundamentally
different, like Vulkan and DRM fourcc.


Thanks,
pq

--Sig_/PWI1bJaQrT8/Yn7UW=rAv+v
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmK9VQ0ACgkQI1/ltBGq
qqdSnw//dKU1Je3JNCuVm7l04PD/fNdNZkQAya5N7nCGJ+3573oOu+IsmD6qJNyu
n20Q8gV0EaRAmptxeCwPlQTzLdlqC711c1lDAaA3TQEmyOIYH2rk/dq0VHnuW2LK
9VCnHiLCfa7apbWrZE+qqVPhwtU1JVLZGke9UbOaDMZ4cnx5+9ckejmsGlshL+ZP
2BHtfNcQT+V47+9/IjJh5dWdVwzSiCh3psArhuEbxq4jfJNhzrUqvY8bQpUfd/ja
Q4SYPEaH8OmZvFYzrnIdnM6f8wYNLfwF2JXpIGXdS8TLhbJlfdZj7OIaEek8/Nlx
Rr79cscBYX0nFUlAkmrKWSpbq+WpC9vaB9uJaZLQyAZj5GHjW+OqKi83moyvVhBt
6fAZKehEugRhSeACMltFQEChCx5yFMj9eACHozzO241xvKZHoGMh2xJfZpOYLjnV
d6zpXmjwgXWyIgtx4BzTRAA12eI7tt3k4YjrbzrUsSf6zdgT/7NfHw07n4+THynl
sWf+evSYCIOIU1ajkDc+zbbKNnybs3d4W0v0UmVwIFZs8lXJXWg+Bgjt1mtKwNV1
18fY0bE7g2bcLvMltRgWgBmEyIRIOqI6NqWIifF0WvRcdD2WH7j0qQiADWvVP8dd
Yg4tpsuRPFHI71FZ/3fHzAC2+4of6iF7R//bdg18h8JSuivblHk=
=FXx7
-----END PGP SIGNATURE-----

--Sig_/PWI1bJaQrT8/Yn7UW=rAv+v--

--===============8203748854779754969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8203748854779754969==--
