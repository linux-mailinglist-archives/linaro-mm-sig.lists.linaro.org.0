Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 957BD645E7B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Dec 2022 17:12:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A605A3E943
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Dec 2022 16:12:06 +0000 (UTC)
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com [66.111.4.229])
	by lists.linaro.org (Postfix) with ESMTPS id 8118D3E927
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Dec 2022 16:11:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b=cs53TPq2;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=OZ6xj64j;
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.229 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.nyi.internal (Postfix) with ESMTP id 5120D5803C1;
	Wed,  7 Dec 2022 11:11:57 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 07 Dec 2022 11:11:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1670429517; x=1670436717; bh=TEYFS/6gZa
	DWc2dblU5iUytEgOwH+PjKNL3XF1HvRjU=; b=cs53TPq2aKVUc/54sdr6wrQJ6/
	sTylapB4ECbP99K5rPXD/P+HwtDQTRwedGcP4op1DnSC6/EXWA5w7/AaERO0CqOP
	bVmzP/ZS6ToEMJ/anbsvNy/WDndoQsVLaZ12ed5n3bY+Vp1GKGiQY4Mp8fxrRw0U
	8PiGUU1u2kRyPk5zUZNpf4kwK+X9/zDe1bbCDaD/FvtSrsyg6DydyseOLSkFiOzk
	HWL4TBkjzM9+MA6fN00FAJOLjesJLM9ik2WIu7ogM0vyV0hZEL68A+tyn/O0PUb9
	W9eUFeqZs6vA0d2RP37Rj/Rxe0R3Q9lGPFmpvl+u3sBA7cy+jaP70pnuhPxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1670429517; x=1670436717; bh=TEYFS/6gZaDWc2dblU5iUytEgOwH
	+PjKNL3XF1HvRjU=; b=OZ6xj64jvFJ+ccr2+ELVBBlpfPAaPAY3DphauI71FgMd
	KxqgrbQurGdB7DNhZx06gw9PKOURZyKFMSMF9ihBZF1QETX4EHhSN+o2hgPRYGq0
	+3nSyBTQjfkcjWalROC19CHF6Ve8HFI5bRhqI8ITk9OJBDsKvxNycfdvcZyqoeAM
	wGsTRkSf2oKGsivCa6zJT1DxOqqKXouYztfjWRfkBbVTgyZNSNx5J6DOZtwNfKyv
	/bvxTElb9cXqilFKgK0+FkadRAog1Wd7HxzWJkg2+SuDV90E1E4w14WksdhLEll/
	7ZVxokjTOocI9bOk+F3imkbU7O5+lOtlQBd39yewDw==
X-ME-Sender: <xms:TLuQY6jxrRX76Sfo6zcqdzhjgOx-u-DVuvGRmUvkMcrZ_llLqifB-w>
    <xme:TLuQY7DwAkHw6ATcYa-tEGkEh6sp9FdZOR1D-UPG3yUq68hi_EfCk9LW7kI_8bvfn
    fWqwwfPolMLvvS_1ys>
X-ME-Received: <xmr:TLuQYyHzHsye05U_uFppho6SxxQewvcycEAYbqmhC_QxAryaTAmCAU2GfLsRzNov2wNzR6tXFWa9_WWVEMx8mT5wUQW2sO7AyhXZi_KsTGHMqg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudekgdekgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepjeevfeehfeekieffgeevleevtefgffefkedtfeeuhfettdegjeehgfegudff
    ffdunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:TLuQYzSX7LwGPf3qOKl-_mgQdgT8SFnrpSs5UtcJQcIRigDD8S1DvQ>
    <xmx:TLuQY3zdyLjU321g6mIVtkQEEXOcwGQAMumek5T1lBckGt_GwOVdgQ>
    <xmx:TLuQYx5SultAK7aZz5U1dKZoDPqCkZPOHvFgZkuFMzsq8-OyplLhLg>
    <xmx:TbuQYyI8abNlVCW1NSf6kZ8Ur3xaFFtlgmhIKhDvgL78eRjIure5IA>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 7 Dec 2022 11:11:55 -0500 (EST)
Date: Wed, 7 Dec 2022 17:11:54 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>
Message-ID: <20221207161154.clgmuweddljvco5n@houat>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
 <20221123-rpi-kunit-tests-v3-18-4615a663a84a@cerno.tech>
 <51fb1fdd-edf0-b2a3-0573-76a9101adfb3@igalia.com>
MIME-Version: 1.0
In-Reply-To: <51fb1fdd-edf0-b2a3-0573-76a9101adfb3@igalia.com>
X-Rspamd-Queue-Id: 8118D3E927
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	MID_RHS_NOT_FQDN(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[66.111.4.229:from];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:66.111.4.229];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,ffwll.ch,suse.de,gmail.com,google.com,raspberrypi.com,linuxfoundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,linux.dev,googlegroups.com,riseup.net];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:19151, ipnet:66.111.4.0/24, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: MTXPVISNV4JJNCZV2T4VP75MH7B3RPIH
X-Message-ID-Hash: MTXPVISNV4JJNCZV2T4VP75MH7B3RPIH
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Gow <davidgow@google.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, =?utf-8?B?TWHDrXJh?= Canal <mairacanal@riseup.net>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 18/20] drm/vc4: tests: Fail the current test if we access a register
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MTXPVISNV4JJNCZV2T4VP75MH7B3RPIH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4108123154417265092=="


--===============4108123154417265092==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zqyddbg4vv7dqu6f"
Content-Disposition: inline


--zqyddbg4vv7dqu6f
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ma=EDra,

Thanks for your review!

On Wed, Dec 07, 2022 at 11:26:13AM -0300, Ma=EDra Canal wrote:
> On 12/1/22 12:11, Maxime Ripard wrote:
> > Accessing a register when running under kunit is a bad idea since our
> > device is completely mocked.
> >=20
> > Fail the current test if we ever access any of our hardware registers.
> >=20
> > Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Reviewed-by: Ma=EDra Canal <mcanal@igalia.com>
>=20
> Just a small nit: I believe that macros with multiple statements should be
> enclosed in a do-while block [1], even READ macros. I saw that you enclos=
ed
> the WRITE macros on a do-while block, but not the READ macros.

This is on purpose: do-while blocks don't return a value, but ({ ... })
blocks do. So we can do a write macros with a do-while, but can't for
read since we expect to get a value back.

Maxime

--zqyddbg4vv7dqu6f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCY5C7SgAKCRDj7w1vZxhR
xS7mAP9bKwgLyqEhbFvH4crEyk/rKt4WWQzQ53q0+mdYj8Ke2wEAna4d7Vv87Jfa
nISBFEINS8khtUTgsX0GgF+ipLJnGQ0=
=6CdP
-----END PGP SIGNATURE-----

--zqyddbg4vv7dqu6f--

--===============4108123154417265092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4108123154417265092==--
